<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>


    <div class="row">
        <div class="col-lg-4">

            <form action="" method="post">

                <div class="form-group">

                    <input type="text" class="form-control form-control-user" id="kode" placeholder="Kode Lab" name="kode" required value="<?php echo isset($submit) ? $kode : '' ?>">
                    <?= form_error('kode', '<small class="text-danger pl-3">', '</small>');  ?>
                </div>
                <div class="form-group">

                    <input type="text" class="form-control form-control-user" id="nama" placeholder="Name" name="nama" required value="<?php echo isset($submit) ? $name : '' ?>">
                    <?= form_error('name', '<small class="text-danger pl-3">', '</small>');  ?>
                    <br>


                    <button type="submit" name="submit" class="btn btn-primary btn-user btn-block">
                        Tambah lAB
                    </button>

            </form>
        </div>
    </div>


</div>



</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->