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
                                <h6 class="m-0 font-weight-bold text-info">Jadwal Peminjaman <?= $lab['nama_lab']; ?></h6>
                                <h6 class="m-0 font-weight-bold text-info">Tanngal <?= $tgl; ?></h6>
                            </div>
                            <div class=" card-body">
                                <!-- layer 2 -->
                                <div class="layer-0-2 wow slideInUp">
                                    <table class="table table-hover">
                                        <thead>

                                            <tr>
                                                <th scope="col">No</th>
                                                <th scope="col">Nomor Meja</th>
                                                <th scope="col"> Jam Mulai</th>
                                                <th scope="col">Jam Selesai </th>


                                            </tr>
                                        </thead>
                                        <tbody>

                                            <?php $i = 1;
                                            foreach ($pinjam as $r) : ?>
                                            <tr>
                                                <th><?= $i; ?></th>
                                                <td><?= $r['tempat_duduk']; ?></td>
                                                <td><?= $r['jam_mulai']; ?></td>
                                                <td><?= $r['jam_selesai']; ?></td>

                                            </tr>
                                            <?php $i = $i + 1;
                                            endforeach; ?>


                                        </tbody>

                                    </table>


                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Detail Pengajar -->
                    <div class="col-xl-6 col-md-6 mb-6">
                        <div class="card shadow mb-4">

                            <!-- layer 1 -->
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-info">Form Peminjaman <?= $lab['nama_lab']; ?></h6>
                                <h6 class="m-0 font-weight-bold text-info">Tanngal <?= $tgl; ?></h6>
                            </div>
                            <div class="card-body">
                                <!-- layer 2 -->
                                <form action="" method="post">
                                    <div class="layer-0-2 wow slideInUp">
                                        <div class="form-group">
                                             <label>Pilih Nomor Meja</label>      
                                            <select name="kursi" id="kursi" class="form-control">
                                                   
                                                <?php foreach ($duduk as $m) : ?>
                                                <option value="<?= $m['tempat_duduk'];  ?> "><?= $m['tempat_duduk']; ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                        </div>

                                        <label>Jam Mulai</label>
                                        <div class="form-group">
                                            <input class="form-control form-control-user" type="time" name="mulai" id="mulai">
                                        </div>

                                         <label> Jam Selesai</label>
                                        <div class="form-group">
                                            <input class="form-control form-control-user" type="time" name="selesai" id="selesai">
                                        </div>
                                        <button class="btn btn-info">Pesan</button>



                                    </div>
                                    <img style="width:600;height:600px;border:0; margin-top:50px" src="<?= base_url('assets/image/lab/') . $gambar['image'];  ?>" class="rounded float-left">
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