<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

  <!-- Main Content -->
  <div id="content">
    <!-- outer row -->
    <div class="row">
      <div class="container-fluid">

        <div class="row">
          <!-- Detail Pengajar -->
          <div class="col-xl-6 col-md-6 mb-6">
            <div class="card shadow mb-4">

              <!-- layer 1 -->
              <?= $this->session->flashdata('message');  ?>
              <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Form Peminjaman Lab</h6>
              </div>
              <div class="card-body">
                <!-- layer 2 -->
                <div class="layer-0-2 wow slideInUp">


                  <form action="" method="post">
                    <label>Kegiatan</label>
                    <input type="text" class="form-control form-control-user" id="kegiatan" name="kegiatan" placeholder="Mau ngapain ?" value="<?= set_value('kegiatan'); ?>">
                    <?= form_error('kegiatan', '<small class="text-danger pl-3">', '</small>');  ?>
                </div>
                <br>
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
                <a href="<?= base_url('user/calendar'); ?>">Calendar</a>


              </div>
            </div>
          </div>
        </div>



      </div>
    </div>


    </form>
  </div>
</div>
</div>
<!-- outer row end    -->
<!-- /.container-fluid -->
</div>
<!-- End of Main Content -->
</div>
</div>