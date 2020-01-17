<!-- Begin Page Content -->
<div class="container-fluid">




    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <!-- Content Row -->
    <div class="row">
        <?= $this->session->flashdata('message');  ?>
        <table class="table table-hover">
            <thead>

                <tr>
                    <th scope="col">No</th>
                    <th scope="col">Lab</th>
                    <th scope="col">Posisi Duduk</th>
                    <th scope="col">Kegiatan</th>
                    <th scope="col">Tanggal</th>
                    <th scope="col">Mulai Jam</th>
                    <th scope="col">Selesai Jam</th>
                    <th scope="col">Status</th>

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
                        <td><?= $r['status']; ?></td>
                    </tr>
                    <?php $i = $i + 1;
                endforeach; ?>


            </tbody>
        </table>

    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->