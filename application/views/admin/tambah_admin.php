<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>


    <div class="row">
        <div class="col-lg-4">
            <?= $this->session->flashdata('message');  ?>

            <form action="" method="post">

                <div class="form-group">
                    <!-- <input type="text" class="form-control form-control-user" id="nama" placeholder="Name" name="nama" required value="<?php echo isset($submit) ? $name : '' ?>">
                    <?= form_error('name', '<small class="text-danger pl-3">', '</small>');  ?>
                    <br>
                    <div class="form-group">

                        <input type="number" class="form-control form-control-user" id="nim" placeholder="NIM / NIP" name="nim" required value="<?php echo isset($submit) ? $nim : '' ?>">
                        <?= form_error('nim', '<small class="text-danger pl-3">', '</small>');  ?>
                    </div> -->

                    <div class="form-group">
                        <input type="text" class="form-control form-control-user" id="email" placeholder="Email Address" name="email">
                        <?= form_error('email', '<small class="text-danger pl-3">', '</small>');  ?>
                        <!-- value=" <?= set_value('email'); ?> " -->
                    </div>
                    <!-- <div class="form-group">
                        <input type="Number" class="form-control form-control-user" id="Phone_Number" placeholder="Phone Number" name="Phone_Number" value=" <?= set_value('Phone_Number'); ?> ">
                        <?= form_error('Phone_Number', '<small class="text-danger pl-3">', '</small>');  ?>
                    </div> -->


                    <!-- <div class="form-group row">
                        <div class="col-sm-6 mb-3 mb-sm-0">
                            <input type="password" class="form-control form-control-user" id="password1" name="password1" placeholder="Password">
                            <?= form_error('password1', '<small class="text-danger pl-3">', '</small>');  ?>
                            <br>
                            </ul>
                        </div>

                        <div class="col-sm-6">
                            <input type="password" class="form-control form-control-user" id="password2" name="password2" placeholder="Confrim Password">

                        </div>
                    </div> -->
                    <button type="submit" name="submit" class="btn btn-primary btn-user btn-block">
                        Tambah Akun
                    </button>

            </form>
        </div>
    </div>


</div>



</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->