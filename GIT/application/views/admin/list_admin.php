<!-- Begin Page Content -->
<div class="container-fluid">




    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <a style="margin-bottom:20px" class="btn btn-primary" href="<?= base_url('admin/tambah_admin'); ?>">Tambah Admin</a>


    <!-- Content Row -->
    <div class="row">
        <?= $this->session->flashdata('message');  ?>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th scope="col">No</th>
                    <th scope="col">Nama</th>
                    <th scope="col">NIM</th>
                    <th scope="col">Email</th>
                    <th scope="col">Password</th>
                    <th scope="col">No Hp</th>
                    <th scope="col">Aksi</th>

                </tr>
            </thead>
            <tbody>

                <?php $i = 1;
                foreach ($admin as $r) : ?>
                    <tr>
                        <th><?= $i; ?></th>
                        <td><?= $r['nama_user']; ?></td>
                        <td><?= $r['nim_user']; ?></td>
                        <td><?= $r['email']; ?></td>
                        <td><?= $r['password']; ?></td>
                        <td><?= $r['no_hp']; ?></td>
                        <td>
                            <a href="<?= base_url('admin/ubah_admin/') . $r['id_user']; ?>" class="badge badge-warning">Ubah</a>
                            <a href="<?= base_url('admin/hapus_admin/') . $r['id_user']; ?>" class="badge badge-danger" onclick="return confirm('Yakin mau hapus');">Hapus</a>

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