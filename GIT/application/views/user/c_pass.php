

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
          <div class="row">
            <div class="col-lg-6">
              
            </div>
          </div>

          <div class="row">
            <div class="col-lg-4">
              <?= $this->session->flashdata('message'); ?>
          <form method="post" action="<?= base_url('user/c_pass'); ?>"> 
            <div class="form-group">
              <input type="password" class="form-control"name="last_password" id="last_password" aria-describedby="emailHelp" placeholder="Last password">
              <?= form_error('last_password', '<small class="text-danger pl-3">', '</small>');  ?>
              
            </div>
            <div class="form-group">
              <input type="password" class="form-control" name="new_password" id="new_password" placeholder="Password">
              <?= form_error('new_password', '<small class="text-danger pl-3">', '</small>');  ?>
            </div>
            <div class="form-group">
              <input type="password" class="form-control" name="con_password" id="con_password" placeholder="Confirm Password">
              <?= form_error('con_password', '<small class="text-danger pl-3">', '</small>');  ?>
            </div>
          
            
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
          </div>
    </div>
          




        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->




      
