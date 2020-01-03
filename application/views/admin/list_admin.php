<!-- Begin Page Content -->
<div class="container-fluid">




    <!-- Page Heading -->   

    <a href="#formData" role="button" data-toggle="modal" class="btn btn-primary" style="margin-bottom:20px">Tambah Admin</a>

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


<div class="modal fade" id="formData">
  	<div class="modal-dialog">
    	<div class="modal-content">
      		<div class="modal-header">
        		    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4>Tambah Admin</h4>
      		</div>
					<form class="form-horizontal" id="formRegister">
						<div class="modal-body">		
						    <div class="form-group">

                                <input type="text" class="form-control form-control-user" id="nama" placeholder="Name" name="nama" required value="<?php echo isset($submit) ? $name : '' ?>">
                                <?= form_error('name', '<small class="text-danger pl-3">', '</small>');  ?>
                                <br>
                            </div>
                            
                            <div class="form-group">
                                <input type="number" class="form-control form-control-user" id="nim" placeholder="NIM / NIP" name="nim" required value="<?php echo isset($submit) ? $nim : '' ?>">
                                <?= form_error('nim', '<small class="text-danger pl-3">', '</small>');  ?>
                            </div>

                            <div class="form-group">
                                <input type="text" class="form-control form-control-user" id="email" placeholder="Email Address" name="email">
                                <?= form_error('email', '<small class="text-danger pl-3">', '</small>');  ?>
                                <!-- value=" <?= set_value('email'); ?> " -->
                            </div>

                            <div class="form-group">
                                <input type="Number" class="form-control form-control-user" id="Phone_Number" placeholder="Phone Number" name="Phone_Number" value=" <?= set_value('Phone_Number'); ?> ">
                                <?= form_error('Phone_Number', '<small class="text-danger pl-3">', '</small>');  ?>
                            </div>


                            <div class="form-group row">
                                <div class="col-sm-6 mb-3 mb-sm-0">
                                    <input type="password" class="form-control form-control-user" id="password1" name="password1" placeholder="Password">
                                    <?= form_error('password1', '<small class="text-danger pl-3">', '</small>');  ?>
                                    <br>
                                    </ul>
                                </div>

                                <div class="col-sm-6">
                                    <input type="password" class="form-control form-control-user" id="password2" name="password2" placeholder="Confrim Password">

                                </div>
                            </div>
                        <button type="submit" name="submit" class="btn btn-primary btn-user btn-block">
                            Tambah Akun
                        </button>
                    </div>
                    
					</form>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->