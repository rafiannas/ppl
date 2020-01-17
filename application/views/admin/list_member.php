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
                            
                            <th class="text-info" scope="col">Email</th>
                          
                            <th class="text-info" scope="col">Aksi</th>
                        </tr>
                    </thead>
                 
                    <tbody>
                        <?php $i = 1;
                        foreach ($member as $r) : ?>
                            <tr>
                                <th><?= $i; ?></th>
            
                                <td><?= $r['email']; ?></td>
                              
                                <td>
                                    <a href="<?= base_url('admin/ubah_admin/') . $r['id_user']; ?> " class="badge badge-info "><i class="fas fa-pencil-alt fa-2x"></i></a>
                                    <a style="margin-left:10%" href="<?= base_url('admin/hapus_member/') . $r['id_user']; ?> " class="badge badge-danger" onclick="return confirm('Yakin mau hapus');"><i class="fas fa-trash fa-2x"></i></a>

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