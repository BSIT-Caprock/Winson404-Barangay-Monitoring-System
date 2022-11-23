<?php 
	include '../config.php';

	// SAVE SYSTEM USER - USERS_ADD.PHP
	if(isset($_POST['create_system_user'])) {
	
		$user_type			 = mysqli_real_escape_string($conn, $_POST['usertype']);
		$username				 = mysqli_real_escape_string($conn, $_POST['username']);
		$firstname       = mysqli_real_escape_string($conn, $_POST['firstname']);
		$middlename      = mysqli_real_escape_string($conn, $_POST['middlename']);
		$lastname        = mysqli_real_escape_string($conn, $_POST['lastname']);
		$suffix          = mysqli_real_escape_string($conn, $_POST['suffix']);
		$contact         = mysqli_real_escape_string($conn, $_POST['contact']);
		$email           = mysqli_real_escape_string($conn, $_POST['email']);
		$password        = mysqli_real_escape_string($conn, md5($_POST['password']));
		$date_registered = date('Y-m-d');

		$check_username = mysqli_query($conn, "SELECT * FROM users WHERE username='$username'");
		if(mysqli_num_rows($check_username)>0) {
      $_SESSION['message'] = "Username already exists.";
      $_SESSION['text'] = "Please try again.";
      $_SESSION['status'] = "error";
			header("Location: users.php");
		} else {
				$save = mysqli_query($conn, "INSERT INTO users (username, firstname, middlename, lastname, suffix, contact, email, password, user_type, date_registered) VALUES ('$username', '$firstname', '$middlename', '$lastname', '$suffix', '$contact', '$email', '$password', '$user_type', '$date_registered')");
	      if($save) {
	      	$_SESSION['message'] = "System user has been saved!";
	        $_SESSION['text'] = "Saved successfully!";
	        $_SESSION['status'] = "success";
					header("Location: users.php");
	      } else {
	        $_SESSION['message'] = "Something went wrong while saving the information.";
	        $_SESSION['text'] = "Please try again.";
	        $_SESSION['status'] = "error";
					header("Location: users.php");
	      }
		}

	}



	// SAVE RESIDENT - RESIDENT_ADD.PHP
	if(isset($_POST['create_resident'])) {
		$firstname        = mysqli_real_escape_string($conn, $_POST['firstname']);
		$middlename       = mysqli_real_escape_string($conn, $_POST['middlename']);
		$lastname         = mysqli_real_escape_string($conn, $_POST['lastname']);
		$suffix           = mysqli_real_escape_string($conn, $_POST['suffix']);
		$dob              = mysqli_real_escape_string($conn, $_POST['dob']);
		$age              = mysqli_real_escape_string($conn, $_POST['age']);
		$birthplace       = mysqli_real_escape_string($conn, $_POST['birthplace']);
		$gender           = mysqli_real_escape_string($conn, $_POST['gender']);
		$civilstatus      = mysqli_real_escape_string($conn, $_POST['civilstatus']);
		$citizenship      = mysqli_real_escape_string($conn, $_POST['citizenship']);
		$occupation       = mysqli_real_escape_string($conn, $_POST['occupation']);
		$house_no         = mysqli_real_escape_string($conn, $_POST['house_no']);
		$street_name      = mysqli_real_escape_string($conn, $_POST['street_name']);
		$purok            = mysqli_real_escape_string($conn, $_POST['purok']);
		$zone             = mysqli_real_escape_string($conn, $_POST['zone']);
		$barangay         = mysqli_real_escape_string($conn, $_POST['barangay']);
		$municipality     = mysqli_real_escape_string($conn, $_POST['municipality']);
		$province         = mysqli_real_escape_string($conn, $_POST['province']);
		$region           = mysqli_real_escape_string($conn, $_POST['region']);
		$sector           = mysqli_real_escape_string($conn, $_POST['sector']);
		$resident_status  = mysqli_real_escape_string($conn, $_POST['resident_status']);
		$voter_status     = mysqli_real_escape_string($conn, $_POST['voter_status']);
		$ID_status        = mysqli_real_escape_string($conn, $_POST['ID_status']);
		$QR_status        = mysqli_real_escape_string($conn, $_POST['QR_status']);
		$years_of_stay    = mysqli_real_escape_string($conn, $_POST['years_of_stay']);
		$date_registered  = date('Y-m-d');
		$file             = basename($_FILES["fileToUpload"]["name"]);
		$signature		    = basename($_FILES["signature"]["name"]);


		$check_email = mysqli_query($conn, "SELECT * FROM users WHERE firstname='$firstname' AND middlename='$middlename' AND lastname='$lastname' AND suffix='$suffix' AND dob='$dob' AND age='$age'");
		if(mysqli_num_rows($check_email)>0) {
      $_SESSION['message'] = "This resident already exists.";
      $_SESSION['text'] = "Please try again.";
      $_SESSION['status'] = "error";
			header("Location: resident_add.php");
		} else {

			// Check if image file is a actual image or fake image
	    $target_dir = "../images-users/";
	    $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
	    $uploadOk = 1;
	    $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));


	    // Allow certain file formats
	    if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif" ) {
		    $_SESSION['message'] = "Only JPG, JPEG, PNG & GIF files are allowed.";
		    $_SESSION['text'] = "Please try again.";
		    $_SESSION['status'] = "error";
				header("Location: resident_add.php");
		    $uploadOk = 0;
	    }

	    // Check if $uploadOk is set to 0 by an error
	    if ($uploadOk == 0) {
		    $_SESSION['message'] = "Your file was not uploaded.";
		    $_SESSION['text'] = "Please try again.";
		    $_SESSION['status'] = "error";
				header("Location: resident_add.php");

	    // if everything is ok, try to upload file
	    } else {

	        if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {

	        		// Check if image file is a actual image or fake image
					    $sign_target_dir = "../images-signature/";
					    $sign_target_file = $sign_target_dir . basename($_FILES["signature"]["name"]);
					    $sign_uploadOk = 1;
					    $sign_imageFileType = strtolower(pathinfo($sign_target_file,PATHINFO_EXTENSION));

					    // Allow certain file formats
					    if($sign_imageFileType != "jpg" && $sign_imageFileType != "png" && $sign_imageFileType != "jpeg" && $sign_imageFileType != "gif" ) {
						    $_SESSION['message'] = "Only JPG, JPEG, PNG & GIF files are allowed.";
						    $_SESSION['text'] = "Please try again.";
						    $_SESSION['status'] = "error";
								header("Location: resident_add.php");
						    $sign_uploadOk = 0;
					    }

					    // Check if $sign_uploadOk is set to 0 by an error
					    if ($sign_uploadOk == 0) {
						    $_SESSION['message'] = "Your file was not uploaded.";
						    $_SESSION['text'] = "Please try again.";
						    $_SESSION['status'] = "error";
								header("Location: resident_add.php");

					    // if everything is ok, try to upload file
					    } else {

					    		if (move_uploaded_file($_FILES["signature"]["tmp_name"], $sign_target_file)) {

					    				$save = mysqli_query($conn, "INSERT INTO users (firstname, middlename, lastname, suffix, dob, age, birthplace, gender, civilstatus, citizenship, occupation, house_no, street_name, purok, zone, barangay, municipality, province, region, sector, resident_status, voter_status, ID_status, QR_status, years_of_stay, image, digital_signature, date_registered) VALUES ('$firstname', '$middlename', '$lastname', '$suffix', '$dob', '$age', '$birthplace',  '$gender', '$civilstatus', '$citizenship', '$occupation', '$house_no', '$street_name', '$purok', '$zone', '$barangay', '$municipality', '$province', '$region', '$sector', '$resident_status', '$voter_status', '$ID_status', '$QR_status', '$years_of_stay', '$file', '$signature', '$date_registered')");

				              if($save) {
						          	$_SESSION['message'] = "Resident information has been saved!";
						            $_SESSION['text'] = "Saved successfully!";
								        $_SESSION['status'] = "success";
												header("Location: resident_add.php");
						          } else {
						            $_SESSION['message'] = "Something went wrong while saving the information.";
						            $_SESSION['text'] = "Please try again.";
								        $_SESSION['status'] = "error";
												header("Location: resident_add.php");
						          }

					    		} else {
					    				$_SESSION['message'] = "There was an error uploading your digital signature.";
					            $_SESSION['text'] = "Please try again.";
							        $_SESSION['status'] = "error";
											header("Location: resident_add.php");
					    		}
					    }
	       			
	        } else {
		        	$_SESSION['message'] = "There was an error uploading your profile picture.";
	            $_SESSION['text'] = "Please try again.";
			        $_SESSION['status'] = "error";
							header("Location: resident_add.php");
	        }
		  }
		}
	}




?>