<!-- Begin Page Content -->
<div class="container-fluid">




    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <a href="#formData" role="button" data-toggle="modal" class="btn btn-primary" style="margin-bottom:20px">Tambah Lab</a>


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
                    <tfoot>
                        <tr>
                            <th class="text-info" scope="col">No</th>
                            <th class="text-info" scope="col">Kode Lab</th>
                            <th class="text-info" scope="col">nama Lab</th>
                            <th class="text-info" scope="col">Aksi</th>
                        </tr>
                    </tfoot>
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


<div class="modal fade" id="formData">
  	<div class="modal-dialog">
    	<div class="modal-content">
      		<div class="modal-header">
        		    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4>Tambah Lab</h4>
      		</div>
				<form class="form-horizontal" id="formRegister">
					<div class="modal-body">		
					    <div class="form-group">

                            <input type="text" class="form-control form-control-user" id="kode" placeholder="Kode Lab" name="kode" required value="<?php echo isset($submit) ? $kode : '' ?>">
                            <?= form_error('kode', '<small class="text-danger pl-3">', '</small>');  ?>
                        </div>
               
                        <div class="form-group">

                            <input type="text" class="form-control form-control-user" id="nama" placeholder="Name" name="nama" required value="<?php echo isset($submit) ? $name : '' ?>">
                            <?= form_error('name', '<small class="text-danger pl-3">', '</small>');  ?>
                            <br>
                        </div>

                        <button type="submit" name="submit" class="btn btn-primary btn-user btn-block">
                            Tambah lab
                        </button>         
                    </div>    
				</form>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->