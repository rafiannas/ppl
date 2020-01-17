<br>
<div class="container">
  <br><br>
  <!-- Outer Row -->
  <div class="row justify-content-center">

    <div class="col-xl-12 col-lg-12 col-md-9">
      <br><br>
      <div class="card o-hidden border-0 shadow-lg col-lg-7 mx-auto">
        <h2 class="h4 text-gray-900 mt-2" style="text-align: center; margin-top:10px"><i class="fas fa-laptop-code fa-4x"></i></h2>
        <div class="card-body p-0">
          <!-- Nested Row within Card Body -->
          <div class="row">

            <div class="col-lg">
              <div class="p-5">

                <div class="text-center">
                  <h1 class="h4 text-gray-900 "><b>Login</b></h1>
                  <h4 class="h5 text-gray-900">Peminjaman Laboratorium Informatika</h4>
                  <p class="h5 text-gray-900 mb-3">Universitas Al Azhar Indonesia</p>
                  <span style="float-bottom">Silahkan login menggunakan Gmail IF </span>
                </div>

                <?= $this->session->flashdata('message');  ?>
                <!-- 
                <form class="user" method="post" action=" <?= base_url('auth'); ?> ">
                  <div class="form-group">
                    <label class="h6 ml-3 text-gray-900">Masukkan Email</label>
                    <input type="email" class="form-control form-control-user" id="nim" name="nim" placeholder="Masukkan Email">
                    <?= form_error('nim', '<small class="text-danger pl-3">', '</small>');  ?>
                  </div>
                  <div class="form-group">
                    <label class="h6 ml-3 text-gray-900">Masukkan Password</label>
                    <input type="password" class="form-control form-control-user" id="password" name="password" placeholder="Masukkan Password...">
                    <?= form_error('password', '<small class="text-danger pl-3">', '</small>');  ?>
                  </div>

                  <button type="submit" class="btn btn-info btn-user btn-block">
                    Login
                  </button>


                </form> -->
                <hr>
                <!-- <div class="text-center">
                    <a class="small" href="forgot-password.html">Forgot Password?</a>
                  </div> -->
                <div class="text-center">

                  <a class="small" href="<?= $google; ?>"><i class="fab fa-google fa-3x"></i></a>
                  <!-- <a class= btn style="margin-left:47%; margin-top: 20%" href = "<?= $google; ?>" ><i class="fab fa-google fa-3x"></i></a> -->

                  <br><br>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>

  </div>

</div>