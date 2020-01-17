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
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Detail Pengajar :</h6>
                            </div>
                            <div class="card-body">
                                <!-- layer 2 -->
                                <div class="layer-0-2 wow slideInUp">

                                    <!-- <form action=" base_url('admin/regispengajarkelas')" method="post"> -->
                                    <?= form_open_multipart('admin/regispengajarkelas'); ?>
                                    <!-- email pengajar -->
                                    <div class="form-group">
                                        <label><b>Email</b></label>
                                        <input type="email" class="form-control" name="email" id="email" placeholder="Masukan Email pengajar" value="<?= set_value('email'); ?>" />
                                        <?= form_error('email', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <!-- nama pengajar -->
                                    <div class="form-group">
                                        <label><b>Nama</b></label>
                                        <input type="text" class="form-control" name="name" id="name" placeholder="Masukan Nama pengajar" value="<?= set_value('name'); ?>" />
                                        <?= form_error('name', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <!-- no tlp -->
                                    <div class="form-group">
                                        <label><b>No. Tlp</b></label>
                                        <input type="tel" data-rule-mobileUK="true" class="form-control" name="notlp" id="notlp" maxlength=12 minlength=12 placeholder="Masukan no. tlp pengajar" value="<?= set_value('notlp'); ?>" />
                                        <?= form_error('notlp', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <!-- alamat -->
                                    <div class="form-group">
                                        <label><b>Alamat</b></label>
                                        <input type="text" class="form-control" name="address" id="address" placeholder="Masukan alamat pengajar" value="<?= set_value('address'); ?>" />
                                        <?= form_error('address', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <!-- no rekening -->
                                    <div class="form-group">
                                        <label><b>No. Rekening</b></label>
                                        <input type="text" class="form-control" name="rekening" id="rekening" placeholder="No. Rekening pengajar" value="<?= set_value('rekening'); ?>" />
                                        <?= form_error('rekening', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <!-- foto -->
                                    <div class="form-group">
                                        <label><b>Foto Pengajar</b></label>
                                        <input type="file" class="form-control" name="foto" id="foto" />
                                        <?= form_error('foto', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <!-- password -->
                                    <div class="form-group">
                                        <label><b>Password</b></label>
                                        <input type="password" class="form-control" name="password1" id="password1" placeholder="Masukan Password anda (min 6 karakter)" value="<?= set_value('password1'); ?>" />
                                        <?= form_error('password1', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <!-- konfirmasi pass -->
                                    <div class="form-group">
                                        <label><b>Konfirmasi Password</b></label>
                                        <input type="password" class="form-control" name="password2" id="password2" placeholder="Ketikan kembali password anda" value="<?= set_value('password2'); ?>" />
                                        <?= form_error('password2', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Detail Kelas -->
                    <div class="col-xl-6 col-md-6 mb-6">
                        <div class="card shadow mb-4">
                            <!-- layer 1 -->
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Detail Kelas :</h6>
                            </div>
                            <div class="card-body">
                                <!-- layer 2 -->
                                <div class="layer-0-2 wow slideInUp">
                                    <!-- Jenis Kelas -->
                                    <div class="form-group">
                                        <label><b>Jenis</b></label>
                                        <select name="jeniskls">
                                            <?php
                                            $listjeniskelas = "SELECT * FROM jeniskelas";
                                            $jeniskelas = $this->db->query($listjeniskelas)->result_array();

                                            foreach ($jeniskelas as $jnskls) {
                                                ?>
                                            <option class="form-control" value="<?= $jnskls['IDjenis']; ?>">
                                                <?= '(' . $jnskls['IDjenis'] . ') ' . $jnskls['jeniskelas'];  ?>
                                            </option>

                                            <?php
                                            }
                                            ?>
                                        </select>

                                        <!-- <input type="text" class="form-control" name="jeniskls" id="jeniskls" placeholder="Masukan jenis kelas" value="<?= set_value('jeniskls'); ?>" /> -->
                                    </div>
                                    <!-- Deskripsi kelas -->
                                    <div class="form-group">
                                        <label><b>Deskripsi</b></label>
                                        <input type="text" data-rule-mobileUK="true" class="form-control" name="deskripsi" id="deskripsi" placeholder="Deskripsi kelas" value="<?= set_value('deskripsi'); ?>" />
                                        <?= form_error('deskripsi', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <!-- Kapasitas kelas -->
                                    <div class="form-group">
                                        <label><b>Kapasitas</b></label>
                                        <input type="number" class="form-control" name="kapasitas" id="kapasitas" placeholder="Kapasitas kelas" value="<?= set_value('kapasitas'); ?>" />
                                        <?= form_error('kapasitas', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <!-- biaya -->
                                    <div class="form-group">
                                        <label><b>Biaya</b></label>
                                        <input type="number" class="form-control" name="biaya" id="biaya" placeholder="Biaya per kelas" value="<?= set_value('biaya'); ?>" />
                                        <?= form_error('biaya', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                    <!-- jumlah pertemuan  -->
                                    <div class="form-group">
                                        <label><b>Pertemuan</b></label>
                                        <input type="number" class="form-control" name="pertemuan" id="pertemuan" placeholder="Total pertemuan untuk kelas ini" value="<?= set_value('pertemuan'); ?>" />
                                        <?= form_error('pertemuan', '<small class="text-danger pl-3">', '</small>'); ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>


            <div class="col-xl-12 col-md-12 mb-12">
                <!-- Inner row 1 END -->
                <!-- Inner row 2 -->
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12 center">
                            <!-- layer 3 -->
                            <div class="form-group">
                                <input type="submit" name="submit" class="btn btn-primary btn-user btn-block" value="Daftar Sekarang" />
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Inner row 2 END -->
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