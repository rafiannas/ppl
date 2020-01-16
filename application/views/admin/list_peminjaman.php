<!-- Begin Page Content -->
<div class="container-fluid">




  <!-- Page Heading -->
  <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
  <a href="<?= base_url('laporanpdf'); ?>" target="_blank" rel="nofollow" style="margin-bottom:10px" class="btn btn-primary">Export file</a>


  <div class="row">
    <div class="col-md-6">
      <?= form_open('admin/next'); ?>
      <label>Awal</label>
      <input type="date" class="form-control" name="awal">
    </div>
    <div class="col-md-6">
      <label>Akhir</label>
      <input type="date" class="form-control" name="akhir">
    </div>
  </div>
  <br>

  <br>
  <button style="margin-bottom: 20px" name="report" class="btn btn-info">Select</button>
  </form>

  <!-- Content Row -->
  <div class="row">
    <?= $this->session->flashdata('message');  ?>
    <!-- DataTales Example -->

    <?php
    if ($s1 == 1) : ?>
      <div class="card shadow mb-4">
        <div class="card-header py-3">

          <h6 class="m-0 font-weight-bold text-primary">Data Peminjaman Lab Informatika</h6>
        </div>
        <div class="card-body">
          <div class="table-responsive">



            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Peminjaman</th>
                 
                  <th>Lab</th>
                  <th>Posisi date</th>
                  <th>Kegiatan</th>
                  <th>Tanggal</th>
                  <th>Mulai Jam</th>
                  <th>Selesai Jam</th>
                  <th>Status</th>
                  <th>Aksi</th>

                </tr>
              </thead>
              <tfoot>
                <tr>
                  <th>No</th>
                  <th>Peminjaman</th>
             
                  <th>Lab</th>
                  <th>Posisi date</th>
                  <th>Kegiatan</th>
                  <th>Tanggal</th>
                  <th>Mulai Jam</th>
                  <th>Selesai Jam</th>
                  <th>Status</th>
                  <th>Aksi</th>
                </tr>
              </tfoot>

              <?php $i = 1;
                foreach ($pinjam as $r) : ?>
                <tr>
                  <th><?= $i; ?></th>
                  <th><?= $r['email_user']; ?></th>
                
                  <th><?= $r['nama_lab']; ?></th>
                  <th><?= $r['tempat_duduk']; ?></th>
                  <th><?= $r['kegiatan']; ?></th>
                  <th><?= $r['tanggal_pinjam']; ?></th>
                  <th><?= $r['jam_mulai']; ?></th>
                  <th><?= $r['jam_selesai']; ?></th>
                  <th><?= $r['status']; ?></th>
                  <td>
                    <a style="margin-left:10%" href="<?= base_url('admin/hapus_pinjam/') . $r['id_peminjaman']; ?>" class="badge badge-danger" onclick="return confirm('Yakin mau hapus ?');"><i class="fas fa-trash"></i></a>
                  </td>
                </tr>
              <?php $i = $i + 1;
                endforeach; ?>


            </table>

          </div>

        </div>
      </div>
    <?php endif; ?>

  </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->