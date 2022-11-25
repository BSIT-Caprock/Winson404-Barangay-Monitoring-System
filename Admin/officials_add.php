<!-- CREATE NEW -->
<div class="modal fade" id="add_users" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable modal-lg">
    <div class="modal-content">
      <div class="modal-header bg-light">
        <h5 class="modal-title" id="exampleModalLabel"><i class="fa-solid fa-users"></i> Create Official</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true"><i class="fa-solid fa-circle-xmark"></i></span>
        </button>
      </div>
      <div class="modal-body">
        <form action="process_save.php" method="POST" enctype="multipart/form-data">
          
          <div class="row">

            <div class="col-lg-6">
              <div class="form-group">
                <label>Position</label>
                <input type="text" class="form-control"  placeholder="Position" name="position" required>
              </div>
            </div>

          </div>
          <div class="row">
            <div class="col-lg-6">
              <div class="form-group">
                <label>First name</label>
                <input type="text" class="form-control"  placeholder="First name" name="firstname" required onkeyup="lettersOnly(this)">
              </div>
            </div>
            <div class="col-lg-6">
              <div class="form-group">
                <label>Middle name</label>
                <input type="text" class="form-control"  placeholder="Middle name" name="middlename" onkeyup="lettersOnly(this)">
              </div>
            </div>
            <div class="col-lg-6">
              <div class="form-group">
                <label>Last name</label>
                <input type="text" class="form-control"  placeholder="Last name" name="lastname" required onkeyup="lettersOnly(this)">
              </div>
            </div>
            <div class="col-lg-6">
              <div class="form-group">
                <label>Suffix name</label>
                <input type="text" class="form-control"  placeholder="Jr./Sr." name="suffix">
              </div>
            </div>
            <div class="col-lg-12">
                <div class="form-group">
                  <label>Description</label>
                  <textarea class="form-control" id="" placeholder="Description" cols="30" rows="2" name="description" required></textarea>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="form-group">
                  <label for="Upload image" class=" col-form-label">Upload signature</label>
                  <input type="file" class=" form-control-file" name="fileToUpload" required id="Upload image" onchange="newgetImagePreview(event)">
                </div>
            </div>
            <!-- LOAD IMAGE PREVIEW -->
            <div class="col-lg-6">
                <div class="form-group" id="user_preview" required>
                </div>
            </div>
          </div>
      </div>
      <div class="modal-footer alert-light">
        <button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="fa-solid fa-ban"></i> Cancel</button>
        <button type="submit" class="btn bg-gradient-primary" name="create_official" id="create_admin"><i class="fa-solid fa-floppy-disk"></i> Submit</button>
      </div>
      </form>
    </div>
  </div>
</div>


<script>
  function newgetImagePreview(event)
  {
    var image=URL.createObjectURL(event.target.files[0]);
    var imagediv= document.getElementById('user_preview');
    var newimg=document.createElement('img');
    imagediv.innerHTML='';
    newimg.src=image;
    newimg.width="100";
    newimg.height="100";
    newimg.style['border-radius']="50%";
    newimg.style['display']="block";
    newimg.style['margin-left']="auto";
    newimg.style['margin-right']="auto";
    newimg.style['box-shadow']="rgba(100, 100, 111, 0.2) 0px 7px 29px 0px";
    imagediv.appendChild(newimg);
  }
</script>


