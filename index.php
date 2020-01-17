<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

  <!-- Main Content -->
  <div id="content">
    <!-- outer row -->
    <div class="row">
      <div class="container">

        <div class="row">
          <!-- Detail Pengajar -->
          <div class="col-xl-6 col-md-6 mb-6 text-center">
            <div class="card shadow mb-2 col-md-12" >

              <!-- layer 1 -->
             
              <?= $this->session->flashdata('message');  ?>
              <div class="card-header py-12">
                <h6 class="m-0 font-weight-bold text-info">Form Peminjaman Lab</h6>
              </div>
              <div class="card-body">
                <!-- layer 2 -->
                <div class="layer-0-2 wow slideInUp">

                <form action="" method="post">
                 <div class="form-group">
                   <label>Kegiatan</label>
                  <select name="kegiatan" id="kegiatan" class="form-control">
                 
                    <?php foreach ($kegiatan as $m) : ?>
                      <option value="<?= $m['id'];  ?> "><?= $m['kegiatan']; ?></option>
                    <?php endforeach; ?>
                  </select>
                </div>                 
                <label>Pilih Tanggal</label>
                <div class="form-group">
                  <input class="form-control form-control-user" type="date" name="tgl" id="tgl" value="<?= set_value('tgl'); ?>">
                </div>

                <label>Pilih Lab</label>
                <div class="form-group">
                  <select name="lab" id="lab" class="form-control">
                  
                    <?php foreach ($pilih as $m) : ?>
                      <option value="<?= $m['kode_lab'];  ?> "><?= $m['nama_lab']; ?></option>
                    <?php endforeach; ?>
                  </select>
                </div>
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