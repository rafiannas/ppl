<!-- Begin Page Content -->
<div class="container-fluid">




    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <!-- Content Row -->
    <div class="row">
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">

                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <a class="text-xs font-weight-bold text-info text-uppercase mb-1" href="<?= base_url('admin/list_admin'); ?>">Jumlah Admin</a>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $admin['jumlah']; ?></div>
                        </div>
                        <div class="col-auto">
                            <i href="#" class="fas fa-fw fa-user-tie fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">

                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <a class="text-xs font-weight-bold text-success text-uppercase mb-1" href="<?= base_url('admin/list_member'); ?>">Jumlah Anggota</a>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $member['jumlah']; ?></div>
                        </div>
                        <div class="col-auto">
                            <i href="#" class="fas fa-fw fa-user fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">

                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <a class="text-xs font-weight-bold text-warning text-uppercase mb-1" href="<?= base_url('admin/list_lab'); ?>">Jumlah Laboratorium</a>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $lab['jumlah']; ?></div>
                        </div>
                        <div class="col-auto">
                            <i href="#" class="fas fa-fw fa-door-closed fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-danger shadow h-100 py-2">
                <div class="card-body">

                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <a class="text-xs font-weight-bold text-danger text-uppercase mb-1" href="<?= base_url('admin/list_lab'); ?>">Jumlah Peminjaman</a>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $pinjam['jumlah']; ?></div>
                        </div>
                        <div class="col-auto">
                            <i href="#" class="fas fa-fw fa-bookmark fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>


       

    </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->