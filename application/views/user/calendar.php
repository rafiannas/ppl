<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

    <!-- Main Content -->
    <div id="content">
        <!-- outer row -->
        <div class="row">
            
            <div class="container-fluid">
                 <?=$user['email'];
             echo $user['role']; ?>
                <h2 class="font-weight-bold text-info" style="text-align-last: center"><?= $title; ?></h6>
                    <h3 class="font-weight-bold text-info" style="text-align-last: center"><?= $title2; ?></h3>
                    <div class=" row">
                        <!-- Detail Pengajar -->
                        <div class="col-xl-12 col-md-12 mb-12">
                            <?php $hari = date("D");
                            switch ($hari) {
                                case 'Sun':
                                    $hari_ini = "Minggu";
                                    break;

                                case 'Mon':
                                    $hari_ini = "Senin";
                                    break;

                                case 'Tue':
                                    $hari_ini = "Selasa";
                                    break;

                                case 'Wed':
                                    $hari_ini = "Rabu";
                                    break;

                                case 'Thu':
                                    $hari_ini = "Kamis";
                                    break;

                                case 'Fri':
                                    $hari_ini = "Jumat";
                                    break;

                                case 'Sat':
                                    $hari_ini = "Sabtu";
                                    break;

                                default:
                                    $hari_ini = "Tidak di ketahui";
                                    break;
                            }

                            echo $hari_ini . ", ";
                            echo date('d M Y');


                            ?>
                            <br><br>
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                                Pesan Ruangan
                            </button>



                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title font-weight-bold text-info" id="exampleModalLabel">Form peminjaman ruangan</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <br>
                                        <div class="form-group">
                                            <label class="ml-3 font-weight-bold text-danger" for="exampleInputEmail1"><b>Keperluan peminjaman</b></label>
                                            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Keperluan peminjaman">

                                        </div>
                                        <label class="ml-3 font-weight-bold text-danger" for="exampleInputEmail1"><b>Pilih Laboratorium</b></label>
                                        <form method="post" action="<?= base_url('user/index'); ?>">
                                            <select class="custom-select" name="pilih_lab" id="pilih_lab">

                                                <?php foreach ($pLab as $l) : ?>
                                                    <option value="<?= $l['kode_lab']; ?>"><?= $l['nama_lab']; ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                            <br>
                                            <label class="ml-3 font-weight-bold text-danger" for="exampleInputEmail1"><b>Jam Mulai</b></label>
                                            <select class="custom-select" name="jam_mulai" id="jam_mulai">

                                                <?php foreach ($pJam as $j) : ?>
                                                    <option value="<?= $j['id_jam']; ?>"><?= $j['jam']; ?></option>
                                                <?php endforeach; ?>

                                            </select>
                                            <br>
                                            <label class="ml-3 font-weight-bold text-danger" for="exampleInputEmail1"><b>Jam Selesai</b></label>
                                            <select class="custom-select" name="jam_selesai" id="jam_selesai">
                                                <?php foreach ($pJam as $j) : ?>
                                                    <option value="<?= $j['id_jam']; ?>"><?= $j['jam']; ?></option>
                                                <?php endforeach; ?>
                                            </select>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                <button type="button" class="btn btn-primary">Save changes</button>
                                            </div>
                                    </div>
                                </div>
                            </div>
                            <br>
                            </form>
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>x</th>
                                        <?php foreach ($lab as $a) : ?>
                                            <th><?= $a['nama_lab']; ?> </th>
                                        <?php endforeach; ?>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($jam as $j) : ?>
                                        <tr>
                                            <td><?= $j['jam']; ?></td>
                                        </tr>

                                    <?php endforeach; ?>

                                </tbody>
                            </table>
                            <br>

                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Mulai</th>
                                        <th>Selesai</th>
                                        <th>Lab</th>
                                    </tr>
                                </thead>
                                <tbody>


                                </tbody>
                            </table>

                        </div>
                    </div>



            </div>
        </div>



    </div>
</div>
</div>
<!-- outer row end    -->
<!-- /.container-fluid -->
</div>
<!-- End of Main Content -->
</div>
</div>