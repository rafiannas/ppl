<!-- Begin Page Content -->
<div class="container-fluid">



    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-4">
            <h2 class="font-weight-bold text-info" style="text-align-last: center"><?= $title; ?></h6>
                <h3 class="font-weight-bold text-info" style="text-align-last: center"><?= $title2; ?></h3>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th class="text-info" scope="col">No</th>
                            <th class="text-info" scope="col">Lab</th>
                            <th class="text-info" scope="col">Posisi Duduk</th>
                            <th class="text-info" scope="col">Kegiatan</th>
                            <th class="text-info" scope="col">Tanggal</th>
                            <th class="text-info" scope="col">Mulai Jam</th>
                            <th class="text-info" scope="col">Selesai Jam</th>
                            <th class="text-info" scope="col">Status</th>
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