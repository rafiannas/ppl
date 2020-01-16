<!-- Begin Page Content -->
<div class="container-fluid">

    <div class="card shadow mb-4">
        <div class="card-header py-4">
            <h2 class="font-weight-bold text-info" style="text-align-last: center"><?= $title; ?></h6>
                <h3 class="font-weight-bold text-info" style="text-align-last: center"><?= $title2; ?></h3>
                <?= $this->session->flashdata('message');  ?>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th class="text-info" scope="col">No</th>
                            <th class="text-info" scope="col">Peminjam</th>
                          
                            <th class="text-info" scope="col">Lab</th>
                            <th class="text-info" scope="col">Nomor Meja</th>
                            <th class="text-info" scope="col">Kegiatan</th>
                            <th class="text-info" scope="col">Tanggal</th>
                            <th class="text-info" scope="col"> Jam Mulai</th>
                            <th class="text-info" scope="col">Jam Selesai </th>
                            <th class="text-info" scope="col">Status</th>

                        </tr>
                    </thead>
                   
                    <tbody>
                        <?php $i = 1;
                        //  var_dump($pinjam);
                        foreach ($peminjaman as $r) : ?>
                            <tr>
                                <th><?= $i; ?></th>
                                <td><?= $r['email']; ?></td>
                               
                                <td><?= $r['nama_lab']; ?></td>
                                <td><?= $r['tempat_duduk']; ?></td>
                                <td><?= $r['kegiatan']; ?></td>
                                <td><?= $r['tanggal_pinjam']; ?></td>
                                <td><?= $r['jam_mulai']; ?></td>
                                <td><?= $r['jam_selesai']; ?></td>

                                     <td><i  class="ml-3 <?= $r['status']; ?>"></i></td>

                            
                            </tr>
                        <?php $i = $i + 1;
                        endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>


</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->