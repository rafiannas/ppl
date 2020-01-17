<br>
<div class="container">
  <br><br>
  <!-- Outer Row -->
  <div class="row justify-content-center">

    <div class="col-xl-12 col-lg-12 col-md-9">
      <br><br>
      <div class="card o-hidden border-0 shadow-lg col-lg-7 mx-auto">
        <!-- <img src="img/go.png"> -->
        <div class="card-body p-0">
          <!-- Nested Row within Card Body -->
          <div class="row">
            <div class="col-lg">
              <div class="p-5">
                <div class="text-center">
                  <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
                </div>
                <form class="user" method="post" action=" <?= base_url('auth/registration'); ?> ">
                  <div class="form-group">

                    <input type="text" class="form-control form-control-user" id="nama" placeholder="Name" name="nama" required value="<?php echo isset($submit) ? $name : '' ?>">
                    <?= form_error('name', '<small class="text-danger pl-3">', '</small>');  ?>
                    <br>
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
                      Buat Akun
                    </button>

                </form>
                <hr>
                <!--  <div class="text-center">
                <a class="small" href="forgot-password.html">Forgot Password?</a>
              </div> -->
                <div class="text-center">
                  <a class="small" href="<?= base_url('auth'); ?> ">Saya sudah punya akun</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>