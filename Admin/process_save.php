<?php 
	include '../config.php';

	// SAVE SYSTEM USER - USERS_ADD.PHP
	if(isset($_POST['create_system_user'])) {
	
		$user_type	     = mysqli_real_escape_string($conn, $_POST['usertype']);
		$username		 = mysqli_real_escape_string($conn, $_POST['username']);
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

		$ageClassification = "";
		if (
			$age == "1 day old" ||
			$age == "2 days old" ||
			$age == "3 days old" ||
			$age == "4 days old" ||
			$age == "5 days old" ||
			$age == "6 days old" ||
			$age == "1 day old" ||
			$age == "1 week old" ||
			$age == "2 weeks old" ||
			$age == "3 weeks old" ||
			$age == "4 weeks old" ||
			$age == "1 month old" ||
			$age == "2 months old" ||
			$age == "3 months old" ||
			$age == "4 months old" ||
			$age == "5 months old" ||
			$age == "6 months old" ||
			$age == "7 months old" ||
			$age == "8 months old" ||
			$age == "9 months old" ||
			$age == "10 months old" ||
			$age == "11 months old" ||
			$age == "1 year old" ||
			$age == "2 years old" ||
			$age == "3 years old" ||
			$age == "4 years old"
		) { echo $ageClassification = "Toddler"; }

		elseif(
			$age == "5 years old" ||
			$age == "6 years old" ||
			$age == "7 years old" ||
			$age == "8 years old" ||
			$age == "9 years old" ||
			$age == "10 years old" ||
			$age == "11 years old" 
			
		) { echo $ageClassification = "Child"; } 

		elseif(
			$age == "12 years old" ||
			$age == "13 years old" ||
			$age == "14 years old" ||
			$age == "15 years old" ||
			$age == "16 years old" ||
			$age == "17 years old"
		) { echo $ageClassification = "Teen";; } 

		elseif(
			$age == "18 years old" ||
			$age == "19 years old" ||
			$age == "20 years old" ||
			$age == "21 years old" ||
			$age == "22 years old" ||
			$age == "23 years old" ||
			$age == "24 years old" 

		) { echo $ageClassification = "Young"; } 

		elseif(
			$age == "25 years old" ||
			$age == "26 years old" ||
			$age == "27 years old" ||
			$age == "28 years old" ||
			$age == "29 years old" ||
			$age == "30 years old" ||
			$age == "31 years old" ||
			$age == "32 years old" ||
			$age == "33 years old" ||
			$age == "34 years old" ||
			$age == "35 years old" ||
			$age == "36 years old" ||
			$age == "37 years old" ||
			$age == "38 years old" ||
			$age == "29 years old" ||
			$age == "40 years old" ||
			$age == "41 years old" ||
			$age == "42 years old" ||
			$age == "43 years old" ||
			$age == "44 years old" ||
			$age == "45 years old" ||
			$age == "46 years old" ||
			$age == "47 years old" ||
			$age == "48 years old" ||
			$age == "49 years old" ||
			$age == "50 years old" ||
			$age == "51 years old" ||
			$age == "52 years old" ||
			$age == "53 years old" ||
			$age == "54 years old" ||
			$age == "55 years old" ||
			$age == "56 years old" ||
			$age == "57 years old" ||
			$age == "58 years old" ||
			$age == "59 years old"
		) { echo $ageClassification = "Adult"; } 

		else { echo $ageClassification = "Senior"; }

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

	    				  $save = mysqli_query($conn, "INSERT INTO users (firstname, middlename, lastname, suffix, dob, age, ageClassification, birthplace, gender, civilstatus, citizenship, occupation, house_no, street_name, purok, zone, barangay, municipality, province, region, sector, resident_status, voter_status, ID_status, QR_status, years_of_stay, image, digital_signature, date_registered) VALUES ('$firstname', '$middlename', '$lastname', '$suffix', '$dob', '$age', '$ageClassification', '$birthplace',  '$gender', '$civilstatus', '$citizenship', '$occupation', '$house_no', '$street_name', '$purok', '$zone', '$barangay', '$municipality', '$province', '$region', '$sector', '$resident_status', '$voter_status', '$ID_status', '$QR_status', '$years_of_stay', '$file', '$signature', '$date_registered')");

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