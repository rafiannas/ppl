<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

    <!-- Main Content -->
    <div id="content">
        <!-- outer row -->
        <div class="row">
            <div class="container-fluid">

                <div class="row">
                    <!-- Detail Pengajar -->
                    <div class="col-xl-5 col-md-5 mb-5">
                        <div class="card shadow mb-4">

                            <!-- layer 1 -->
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Peminjaman Lab</h6>
                            </div>
                            <div class="card-body">
                                <!-- layer 2 -->



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


                            </div>
                        </div>
                    </div>
                </div>

                <!-- Detail Kelas -->
                <div class="col-xl-5 col-md-5 mb-5">
                    <div class="card shadow mb-4">
                        <!-- layer 1 -->
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">jadwal Peminjaman lab <?= $lab; ?></h6>
                        </div>
                        <div class="card-body">
                            <!-- layer 2 -->
                            <div class="layer-0-2 wow slideInUp">
                                <!-- Jenis Kelas -->
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
                            <input type="submit" name="submit" class="btn btn-primary btn-user btn-block" value="Pesan" />
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