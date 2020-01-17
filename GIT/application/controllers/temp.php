public function index()
{
//$data['ok'] = 1;
$data['title'] = 'Peminjaman Lab';
$data['user'] = $this->db->get_where('user', ['nim_user' => $this->session->userdata('nim')])->row_array();
$data['pilih'] = $this->db->query("SELECT * FROM lab")->result_array();

$data['duduk'] = $this->db->query("SELECT * FROM tempat_duduk WHERE id_lab =1")->result_array();
$ok = 1;
$data['ok'] = $ok;
echo $ok;
$this->form_validation->set_rules('kegiatan', 'k1', 'required|trim');
$this->form_validation->set_rules('lab', 'k2', 'required|trim');
$this->form_validation->set_rules('kursi', 'k3', 'required|trim');
$this->form_validation->set_rules('tgl', 'k4', 'required|trim');
$this->form_validation->set_rules('mulai', 'k5', 'required|trim');
$this->form_validation->set_rules('selesai', 'k6', 'required|trim');

if ($this->form_validation->run() == false) {
$this->load->view('templates/header', $data);
$this->load->view('templates/slidebar', $data);
$this->load->view('templates/topbar', $data);
$this->load->view('user/index', $data);
$this->load->view('templates/footer', $data);
} else {

$ok = ['lab' => $this->input->post('lab')];
$this->session->set_userdata($ok);
$data['ok'] = $ok;

$kegiatan = $this->input->post('kegiatan');
$lab = $this->input->post('lab');
$tgl = $this->input->post('tgl');
$mulai = $this->input->post('mulai');
$selesai = $this->input->post('selesai');
$kursi = $this->input->post('kursi');


$cek1 = $this->db->query("SELECT * FROM peminjaman WHERE tanggal_pinjam = '$tgl' AND kode_lab = '$lab' AND tempat_duduk = $kursi")->result_array();
$flag = False;
$flag2 = False;
foreach ($cek1 as $c) {
if ($mulai >= $c['jam_mulai'] && $mulai <= $c['jam_selesai']) { $flag=True; } if ($selesai>= $c['jam_mulai'] && $selesai <= $c['jam_selesai']) { $flag2=True; } } if ($flag==True) { $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Tidak bisa memilih tempat, jam mulai bertabrakan!</div>');
        redirect('user');
        die;
        }
        if ($flag2 == True) {
        $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Tidak bisa memilih tempat, jam selesai bertabrakan!</div>');
        redirect('user');
        die;
        }


        $data = [
        'nim_user' => $this->session->userdata('nim'),
        'kode_lab' => $lab,
        'kegiatan' => $kegiatan,
        'tanggal_pinjam' => $tgl,
        'jam_mulai' => $mulai,
        'tempat_duduk' => $kursi,
        'jam_selesai' => $selesai,
        'status' => 'MENUNGGU'
        ];

        $this->db->insert('peminjaman', $data);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil memesan</div>');
        redirect('user');
        }
        }




        /////////////
        <!-- Begin Page Content -->
        <div class="container-fluid">




            <!-- Page Heading -->
            <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>



            <!-- Content Row -->
            <div class="row">
                <div class="col-lg-6">
                    <?= $this->session->flashdata('message');  ?>
                    <div class="form-group">
                        <?= form_open('user/index2'); ?>
                        <label>Kegiatan</label>
                        <input type="text" class="form-control form-control-user" id="kegiatan" name="kegiatan" placeholder="Mau ngapain ?" value="<?= set_value('kegiatan'); ?>">
                        <?= form_error('kegiatan', '<small class="text-danger pl-3">', '</small>');  ?>
                    </div>

                    <label>Pilih Tanggal</label>
                    <div class="form-group">
                        <input class="form-control form-control-user" type="date" name="tgl" id="tgl" value="<?= set_value('tgl'); ?>">
                    </div>

                    <label>Pilih Lab</label>
                    <div class="form-group">
                        <select name="lab" id="lab" class="form-control">
                            <option value="<?= set_value('lab'); ?>">Pilih Lab</option>
                            <?php foreach ($pilih as $m) : ?>
                            <option value="<?= $m['kode_lab'];  ?> "><?= $m['nama_lab']; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                    <button class="btn btn-primary">Selanjutnya</button>
                </div>

                <?php
                if ($ok == 1) :
                    ?>

                <table class="table table-hover">
                    <thead>

                        <tr>
                            <th scope="col">No</th>
                            <th scope="col">Lab</th>
                            <th scope="col">Posisi Duduk</th>
                            <th scope="col">Mulai Jam</th>
                            <th scope="col">Selesai Jam</th>


                        </tr>
                    </thead>
                    <tbody>

                        <?php $i = 1;
                            //  var_dump($pinjam);
                            foreach ($pinjam as $r) : ?>
                        <tr>
                            <th><?= $i; ?></th>
                            <td><?= $r['nama_lab']; ?></td>
                            <td><?= $r['tempat_duduk']; ?></td>
                            <td><?= $r['jam_mulai']; ?></td>
                            <td><?= $r['jam_selesai']; ?></td>

                        </tr>
                        <?php $i = $i + 1;
                            endforeach; ?>


                    </tbody>
                </table>


                <div class="col-lg-6">
                    <label>Pilih Kursi</label>
                    <div class="form-group">
                        <select name="kursi" id="kursi" class="form-control">
                            <option value="">Pilih Tempat Duduk</option>
                            <?php foreach ($duduk as $m) : ?>
                            <option value="<?= $m['tempat_duduk'];  ?> "><?= $m['tempat_duduk']; ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>



                    <label>Dari Jam</label>
                    <div class="form-group">
                        <input class="form-control form-control-user" type="time" name="mulai" id="mulai">
                    </div>

                    <label>Samai Jam</label>
                    <div class="form-group">
                        <input class="form-control form-control-user" type="time" name="selesai" id="selesai">
                    </div>
                    <button class="btn btn-primary">Pesan</button>
                    </form>
                </div>
                <?php endif; ?>

            </div>





        </div>
        <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->