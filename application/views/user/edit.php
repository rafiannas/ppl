

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
          
           
          <div class="row">
          	<div class="col-lg-4">
          		
          		<?= form_open_multipart('user/edit');?>
          			  <div class="form-group">
					    <label for="email">Email</label>
					  	  <input type="email" class="form-control" id="email" name="email" value="<?= $user['email']; ?>"  readonly>
					   </div>
					   <div class="form-group">
					    <label for="name">Name</label>
					  	  <input type="name" class="form-control" id="name" name="name" value="<?= $user['name']; ?>">
					  	     <?= form_error('name', '<small class="text-danger pl-3">', '</small>');  ?>
					   </div>
					   <div class="form-group row">
					    <div class="col-sm-2">Photo</div>				  	 
					  	 <div class="col-sm-10">
					  	 	<div class="row">
					  	 		<div class="col-sm-3">
					  	 			<img src="<?= base_url('assets/img/photo/') . $user['photo']; ?>" class="img-thumbnail">
					  	 		</div>
					  	 		<div class="col-sm-9">
					  	 			<!-- form ubah foto  -->
					  	 			
									<input type="file" class="btn btn-outline-secondary" name="image">

					  	 		</div>
					  	 	</div>
					  	 </div>
					   </div>

					   <div class="form-group" row justify-content-end>
					   	<div class="col-sm-10">
					   		<button type="submit" class="btn btn-primary">Edit</button>
					   	</div>
					   </div>

          		</form>

          	</div>


          </div>



        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->




      
