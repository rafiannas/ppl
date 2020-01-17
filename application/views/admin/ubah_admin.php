<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>


    <div class="row">
        <div class="col-lg-4">
            <?= $this->session->flashdata('message');  ?>
            <form action="" method="post">


                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" value="<?= $user2['email']; ?>" readonly>
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