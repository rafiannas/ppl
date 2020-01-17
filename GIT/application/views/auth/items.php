
  <div class="container">
  <br><br>
    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl col-lg-12 col-md-9">
      <br><br>
        <div class="card o-hidden border-0 shadow-lg my-5">
        <img src="img/go.png"> 
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
      
              <div class="col-lg">
                <div class="p-5">
                   
                  <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Login</h1>
                  </div>
                  <form class="user">
                    <div class="form-group">
                      <input type="text" class="form-control form-control-user" id="email" name="email" placeholder="Enter Email Address..." required="">
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control form-control-user" id="password" name="password" placeholder="Enter Password..." required="">
                    </div>

                    <button type="submit" class="btn btn-primary btn-user btn-block">
                      Login
                    </button>
                    
                   
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="forgot-password.html">Forgot Password?</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="<?= base_url('auth/registration'); ?>">Create an Account!</a>
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

  
