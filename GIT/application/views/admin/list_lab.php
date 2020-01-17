<!-- Begin Page Content -->
<div class="container-fluid">




    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <a style="margin-bottom:20px" class="btn btn-primary" href="<?= base_url('admin/tambah_lab'); ?>">Tambah Lab</a>

    <!-- Content Row -->
    <div class="row">
        <?= $this->session->flashdata('message');  ?>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">No</th>
                    <th scope="col">Kode Lab</th>
                    <th scope="col">nama Lab</th>

                </tr>
            </thead>
            <tbody>

                <?php $i = 1;
                foreach ($lab as $r) : ?>
                    <tr>
                        <th><?= $i; ?></th>
                        <td><?= $r['kode_lab']; ?></td>
                        <td><?= $r['nama_lab']; ?></td>

                        <td>

                            <a href="<?= base_url('admin/ubah_lab/') . $r['id_lab']; ?>" class="badge badge-warning">Ubah</a>
                            <a href="<?= base_url('admin/hapus_lab/') . $r['id_lab']; ?>" class="badge badge-danger" onclick="return confirm('Yakin mau hapus');">Hapus</a>

                        </td>
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