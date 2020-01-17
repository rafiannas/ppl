<!-- Begin Page Content -->
<div class="container-fluid">

<div class="col-sm-6">
                    <div class="form-group">
                          <div class="select-wrap">
                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                      <select name="" id="" class="form-control">
                        <option value="">Professional Makeup</option>
                        <option value="">Manicure Pedicure</option>
                        <option value="">Body Treatment</option>
                        <option value="">Haircut &amp; Coloring</option>
                      </select>
                    </div>
                        </div>
                  </div>


    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>



    <!-- Content Row -->
    <div class="row">
        <div class="col-lg-4">
            <?= $this->session->flashdata('message');  ?>
            <div class="form-group">
                <form action="" method="post">
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
            <button class="btn btn-info">Selanjutnya</button>
        </div>
        <div class="row">
            <div class="col-lg-4">
                <h3>Jadwal Peminjaman Lab . <?= $lab; ?></h3>
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

                </table>
            </div>
        </div>


        <label>Pilih Kursi</label>
        <div class="form-group">
            <select name="kursi" id="kursi" class="form-control">
                <option value="">Pilih Tempat Duduk</option>
                <?php foreach ($duduk as $m) : ?>
                <option value="<?= $m['tempat_duduk'];  ?> "><?= $m['tempat_duduk']; ?></option>
                <?php endforeach; ?>
            </select>
        </div>



        <label>Jam Mulai</label>
        <div class="form-group">
            <input class="form-control form-control-user" type="time" name="mulai" id="mulai">
        </div>

        <label>Jam Selesai</label>
        <div class="form-group">
            <input class="form-control form-control-user" type="time" name="selesai" id="selesai">
        </div>
       
        <button class="btn btn-info">Pesan</button>



    </div>
    </form>




</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->