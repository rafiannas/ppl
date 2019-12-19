<!-- Begin Page Content -->
<div class="container-fluid">




    <!-- Page Heading -->

    <a style="margin-bottom:20px" class="btn btn-primary" href="<?= base_url('admin/tambah_admin'); ?>">Tambah Admin</a>

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
                            <th class="text-info" scope="col">Nama</th>
                            <th class="text-info" scope="col">NIM</th>
                            <th class="text-info" scope="col">Email</th>
                            <th class="text-info" scope="col">Password</th>
                            <th class="text-info" scope="col">No Hp</th>
                            <th class="text-info" scope="col">Aksi</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th class="text-info" scope="col">No</th>
                            <th class="text-info" scope="col">Nama</th>
                            <th class="text-info" scope="col">NIM</th>
                            <th class="text-info" scope="col">Email</th>
                            <th class="text-info" scope="col">Password</th>
                            <th class="text-info" scope="col">No Hp</th>
                            <th class="text-info" scope="col">Aksi</th>
                        </tr>
                    </tfoot>
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
                                    <a style="margin-left:10%" href="<?= base_url('admin/hapus_admin/') . $r['id_user']; ?>" class="badge badge-danger" onclick="return confirm('Yakin mau hapus');">Hapus</a>
                                </td>
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