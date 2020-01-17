<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>


    <div class="row">
        <div class="col-lg-4">
            <?= $this->session->flashdata('message');  ?>
            <form action="" method="post">

                <div class="form-group">

                    <input type="text" class="form-control form-control-user" id="kode" placeholder="Kode Lab" name="kode" required value="<?= $lab['kode_lab']; ?>  ">
                    <?= form_error('kode', '<small class="text-danger pl-3">', '</small>');  ?>
                </div>
                <div class="form-group">

                    <input type="text" class="form-control form-control-user" id="nama" placeholder="Name" name="nama" required value="<?= $lab['nama_lab']; ?>">
                    <?= form_error('name', '<small class="text-danger pl-3">', '</small>');  ?>
                    </div>

                    <div class="form-group" row justify-content-end>
                        <div class="col-sm-10">
                            <button type="submit" class="btn btn-primary">Ubah</button>
                        </div>
                    </div>

            </form>

        </div>


    </div>



</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->