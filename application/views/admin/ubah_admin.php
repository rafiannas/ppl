<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>


    <div class="row">
        <div class="col-lg-4">
        <?= $this->session->flashdata('message');  ?>
            <form action="" method="post">

                <div class="form-group">
                    <label for="nama">Nama</label>
                    <input type="text" class="form-control" id="nama" name="nama" value="<?= $user2['nama_user']; ?>">
                    <?= form_error('nama', '<small class="text-danger pl-3">', '</small>');  ?>
                </div>
                <div class="form-group">
                    <label for="nim">NIM/NIP</label>
                    <input type="number" class="form-control" id="nim" name="nim" value="<?= $user2['nim_user']; ?>">
                    <?= form_error('nim', '<small class="text-danger pl-3">', '</small>');  ?>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" value="<?= $user2['email']; ?>" readonly>
                </div>
                <div class="form-group">
                    <label for="nope">No Hp</label>
                    <input type="number" class="form-control" id="nope" name="nope" value="<?= $user2['no_hp']; ?>">
                    <?= form_error('nope', '<small class="text-danger pl-3">', '</small>');  ?>
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