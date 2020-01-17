<!-- Begin Page Content -->
<div class="container-fluid">




    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <!-- Content Row -->
    <div class="row">
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">

                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <a class="text-xs font-weight-bold text-primary text-uppercase mb-1" href="<?= base_url('admin/list_admin'); ?>">Total Admin</a>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $admin['jumlah']; ?></div>
                        </div>
                        <div class="col-auto">
                            <i href="#" class="fas fa-fw fa-store fa-2x text-gray-300"></i>
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
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Total Member</div>
                            <a class="text-xs font-weight-bold text-primary text-uppercase mb-1" href="<?= base_url('admin/list_member'); ?>"><?= $member['jumlah']; ?></a>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-fw fa-user-friends fa-2x text-gray-300"></i>
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
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Total Lab</div>
                            <a class="text-xs font-weight-bold text-primary text-uppercase mb-1" href="<?= base_url('admin/list_lab'); ?>"><?= $lab['jumlah']; ?></a>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-fw fa-user-friends fa-2x text-gray-300"></i>
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
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Total Peminjaman </div>
                            <a class="text-xs font-weight-bold text-primary text-uppercase mb-1" href="<?= base_url('admin/list_peminjaman'); ?>"><?= $pinjam['jumlah']; ?></a>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-fw fa-user-friends fa-2x text-gray-300"></i>
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