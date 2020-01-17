<!-- Begin Page Content -->
<div class="container-fluid">




    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <a style="margin-bottom:20px" class="btn btn-primary" href="<?= base_url('admin/tambah_lab'); ?>">Tambah Lab</a>


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
                            <th class="text-info" scope="col">Kode Lab</th>
                            <th class="text-info" scope="col">nama Lab</th>
                            <th class="text-info" scope="col">Aksi</th>

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
                                    <a style="margin-left:10%" href="<?= base_url('admin/hapus_lab/') . $r['id_lab']; ?>" class="badge badge-danger" onclick="return confirm('Yakin mau hapus');">Hapus</a>

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