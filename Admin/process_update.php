<?php 
	include '../config.php';

	use PHPMailer\PHPMailer\PHPMailer;
	use PHPMailer\PHPMailer\Exception;

	require '../vendor/PHPMailer/src/Exception.php';
	require '../vendor/PHPMailer/src/PHPMailer.php';
	require '../vendor/PHPMailer/src/SMTP.php';

	// UPDATE SYSTEM USER - USER_UPDATE_DELETE.PHP
	if(isset($_POST['update_system_user'])) {

		$user_Id    = $_POST['user_Id'];
		$user_type  = mysqli_real_escape_string($conn, $_POST['usertype']);
		$username   = mysqli_real_escape_string($conn, $_POST['username']);
		$firstname  = mysqli_real_escape_string($conn, $_POST['firstname']);
		$middlename = mysqli_real_escape_string($conn, $_POST['middlename']);
		$lastname   = mysqli_real_escape_string($conn, $_POST['lastname']);
		$suffix     = mysqli_real_escape_string($conn, $_POST['suffix']);
		$contact    = mysqli_real_escape_string($conn, $_POST['contact']);
		$email      = mysqli_real_escape_string($conn, $_POST['email']);

		$fetch        = mysqli_query($conn, "SELECT * FROM users WHERE user_Id='$user_Id' ");
		$row          = mysqli_fetch_array($fetch);
		$get_email    = $row['email'];
		$get_username = $row['username'];

		if($email == $get_email) {
			if($username == $get_username) {
				$save = mysqli_query($conn, "UPDATE users SET username='$username', firstname='$firstname', middlename='$middlename', lastname='$lastname', suffix='$suffix', contact='$contact', email='$email', user_type='$user_type' WHERE user_Id='$user_Id'");
			    if($save) {
			      $_SESSION['message'] = "System user has been updated!";
			      $_SESSION['text'] = "Updated successfully!";
			      $_SESSION['status'] = "success";
				  header("Location: users.php");
			    } else {
			      $_SESSION['message'] = "Something went wrong while updating the information.";
			      $_SESSION['text'] = "Please try again.";
			      $_SESSION['status'] = "error";
				  header("Location: users.php");
			    }
			} else {
				$exist = mysqli_query($conn, "SELECT * FROM users WHERE username='$username' ");
			  	if(mysqli_num_rows($exist) > 0) {
				  	$_SESSION['message'] = "Username already exists.";
					$_SESSION['text'] = "Please try again.";
					$_SESSION['status'] = "error";
					header("Location: users.php");
			  	} else {
		  			$save = mysqli_query($conn, "UPDATE users SET username='$username', firstname='$firstname', middlename='$middlename', lastname='$lastname', suffix='$suffix', contact='$contact', email='$email', user_type='$user_type' WHERE user_Id='$user_Id'");
				    if($save) {
				    	$_SESSION['message'] = "System user has been updated!";
				      	$_SESSION['text'] = "Updated successfully!";
				      	$_SESSION['status'] = "success";
						header("Location: users.php");
				    } else {
				        $_SESSION['message'] = "Something went wrong while updating the information.";
				        $_SESSION['text'] = "Please try again.";
				        $_SESSION['status'] = "error";
						header("Location: users.php");
				    }
			  	}
			}
	  } else {
			$exist = mysqli_query($conn, "SELECT * FROM users WHERE email='$email' ");
		  	if(mysqli_num_rows($exist) > 0) {
	  			$_SESSION['message'] = "Email already exists.";
		      	$_SESSION['text'] = "Please try again.";
	  			$_SESSION['status'] = "error";
				header("Location: users.php");
		  	} else {
	  			if($username == $get_username) {
					$save = mysqli_query($conn, "UPDATE users SET username='$username', firstname='$firstname', middlename='$middlename', lastname='$lastname', suffix='$suffix', contact='$contact', email='$email', user_type='$user_type' WHERE user_Id='$user_Id'");
				    if($save) {
			    	    $_SESSION['message'] = "System user has been updated!";
				        $_SESSION['text'] = "Updated successfully!";
				        $_SESSION['status'] = "success";
						header("Location: users.php");
				    } else {
					    $_SESSION['message'] = "Something went wrong while updating the information.";
					    $_SESSION['text'] = "Please try again.";
					    $_SESSION['status'] = "error";
						header("Location: users.php");
				    }
				} else {
					$exist = mysqli_query($conn, "SELECT * FROM users WHERE username='$username' ");
				  	if(mysqli_num_rows($exist) > 0) {
			  			  $_SESSION['message'] = "Username already exists.";
					      $_SESSION['text'] = "Please try again.";
					      $_SESSION['status'] = "error";
						  header("Location: users.php");
				  	} else {
			  			$save = mysqli_query($conn, "UPDATE users SET username='$username', firstname='$firstname', middlename='$middlename', lastname='$lastname', suffix='$suffix', contact='$contact', email='$email', user_type='$user_type' WHERE user_Id='$user_Id'");
					    if($save) {
				    	  $_SESSION['message'] = "System user has been updated!";
					      $_SESSION['text'] = "Updated successfully!";
					      $_SESSION['status'] = "success";
						  header("Location: users.php");
					    } else {
					      $_SESSION['message'] = "Something went wrong while updating the information.";
					      $_SESSION['text'] = "Please try again.";
					      $_SESSION['status'] = "error";
						  header("Location: users.php");
					    }
				  	}
				}
		  	}
	  }
	}




	// CHANGE SYSTEM USER PASSWORD - USER_UPDATE_DELETE.PHP
	if(isset($_POST['password_system_user'])) {

    	$user_Id     = $_POST['user_Id'];
    	$OldPassword = md5($_POST['OldPassword']);
    	$password    = md5($_POST['password']);
    	$cpassword   = md5($_POST['cpassword']);

    	$check_old_password = mysqli_query($conn, "SELECT * FROM users WHERE password='$OldPassword' AND user_Id='$user_Id'");

    	// CHECK IF THERE IS MATCHED PASSWORD IN THE DATABASE COMPARED TO THE ENTERED OLD PASSWORD
    	if(mysqli_num_rows($check_old_password) === 1 ) {
			// COMPARE BOTH NEW AND CONFIRM PASSWORD
    		if($password != $cpassword) {
				$_SESSION['message']  = "Password does not matched. Please try again";
            	$_SESSION['text'] = "Please try again.";
		        $_SESSION['status'] = "error";
				header("Location: users.php");
    		} else {
    			$update_password = mysqli_query($conn, "UPDATE users SET password='$password' WHERE user_Id='$user_Id' ");
    			if($update_password) {
        			$_SESSION['message'] = "Password has been changed.";
	           	    $_SESSION['text'] = "Updated successfully!";
			        $_SESSION['status'] = "success";
					header("Location: users.php");
                } else {
          			$_SESSION['message'] = "Something went wrong while changing the password.";
            		$_SESSION['text'] = "Please try again.";
			        $_SESSION['status'] = "error";
					header("Location: users.php");
                }
    		}
    	} else {
			$_SESSION['message']  = "Old password is incorrect.";
            $_SESSION['text'] = "Please try again.";
	        $_SESSION['status'] = "error";
			header("Location: users.php");
    	}

    }





  // UPDATE RESIDENT - RESIDENT_UPDATE.PHP
	if(isset($_POST['update_resident'])) {

		$user_Id 		  = $_POST['user_Id'];
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
		$file             = basename($_FILES["fileToUpload"]["name"]);
		$signature		  = basename($_FILES["signature"]["name"]);

		if(!empty($file) && empty($signature)) {

			// Check if image file is a actual image or fake image
	        $target_dir = "../images-users/";
	        $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
	        $uploadOk = 1;
	        $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
	  
	        // Allow certain file formats
	        if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif" ) {
	        $_SESSION['message']  = "Only JPG, JPEG, PNG & GIF files are allowed.";
	        $_SESSION['text'] = "Please try again.";
	        $_SESSION['status'] = "error";
			header('Location: resident_update.php?resident_Id='.$user_Id.'');     
	        $uploadOk = 0;
	        }

	        // Check if $uploadOk is set to 0 by an error
	        if ($uploadOk == 0) {
	        $_SESSION['message']  = "Your file was not uploaded.";
	        $_SESSION['text'] = "Please try again.";
	        $_SESSION['status'] = "error";
			header('Location: resident_update.php?resident_Id='.$user_Id.'');     

        // if everything is ok, try to upload file
        } else {

            if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
              	$save = mysqli_query($conn, "UPDATE users SET firstname='$firstname', middlename='$middlename', lastname='$lastname', suffix='$suffix', dob='$dob', age='$age', birthplace='$birthplace', gender='$gender', civilstatus = '$civilstatus', citizenship = '$citizenship', occupation = '$occupation', house_no = '$house_no', street_name = '$street_name', purok = '$purok', zone = '$zone', barangay = '$barangay', municipality = '$municipality', province = '$province', region = '$region', sector = '$sector', resident_status = '$resident_status', voter_status = '$voter_status', ID_status = '$ID_status', QR_status = '$QR_status', years_of_stay = '$years_of_stay', image='$file' WHERE user_Id='$user_Id'");
				        if($save) {
			                $_SESSION['message']  = "Residents information has been updated!";
				            $_SESSION['text'] = "Updated successfully!";
					        $_SESSION['status'] = "success";
							header('Location: resident_update.php?resident_Id='.$user_Id.'');                          
				        } else {
			                $_SESSION['message'] = "Something went wrong while updating the information.";
				            $_SESSION['text'] = "Please try again.";
					        $_SESSION['status'] = "error";
							header('Location: resident_update.php?resident_Id='.$user_Id.'');     
				        }
            } else {
                  $_SESSION['message'] = "There was an error uploading your picture.";
	              $_SESSION['text'] = "Please try again.";
	              $_SESSION['status'] = "error";
				  header('Location: resident_update.php?resident_Id='.$user_Id.'');     
            }

		}

		} elseif(!empty($signature) && empty($file)) {

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
				header('Location: resident_update.php?resident_Id='.$user_Id.'');     
		   	    $sign_uploadOk = 0;
		    }

		    // Check if $sign_uploadOk is set to 0 by an error
		    if ($sign_uploadOk == 0) {
			    $_SESSION['message'] = "Your file was not uploaded.";
			    $_SESSION['text'] = "Please try again.";
			    $_SESSION['status'] = "error";
				header('Location: resident_update.php?resident_Id='.$user_Id.'');     

		    // if everything is ok, try to upload file
		    } else {

		        if (move_uploaded_file($_FILES["signature"]["tmp_name"], $sign_target_file)) {
		          	$save2 = mysqli_query($conn, "UPDATE users SET firstname='$firstname', middlename='$middlename', lastname='$lastname', suffix='$suffix', dob='$dob', age='$age', birthplace='$birthplace', gender='$gender', civilstatus = '$civilstatus', citizenship = '$citizenship', occupation = '$occupation', house_no = '$house_no', street_name = '$street_name', purok = '$purok', zone = '$zone', barangay = '$barangay', municipality = '$municipality', province = '$province', region = '$region', sector = '$sector', resident_status = '$resident_status', voter_status = '$voter_status', ID_status = '$ID_status', QR_status = '$QR_status', years_of_stay = '$years_of_stay', digital_signature='$signature' WHERE user_Id='$user_Id'");
				        if($save2) {
				              $_SESSION['message']  = "Residents information has been updated!";
			            	  $_SESSION['text'] = "Updated successfully!";
				              $_SESSION['status'] = "success";
							  header('Location: resident_update.php?resident_Id='.$user_Id.'');                          
				        } else {
				              $_SESSION['message'] = "Something went wrong while updating the information.";
			            	  $_SESSION['text'] = "Please try again.";
					          $_SESSION['status'] = "error";
							  header('Location: resident_update.php?resident_Id='.$user_Id.'');     
				        }
		        } else {
		              $_SESSION['message'] = "There was an error uploading your picture.";
	            	  $_SESSION['text'] = "Please try again.";
			          $_SESSION['status'] = "error";
					  header('Location: resident_update.php?resident_Id='.$user_Id.'');     
		        }

			}

		} elseif(!empty($file) && !empty($signature)) {

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
				header('Location: resident_update.php?resident_Id='.$user_Id.'');     
		    	$uploadOk = 0;
		    }

		    // Check if $uploadOk is set to 0 by an error
		    if ($uploadOk == 0) {
			    $_SESSION['message'] = "Your file was not uploaded.";
			    $_SESSION['text'] = "Please try again.";
			    $_SESSION['status'] = "error";
				header('Location: resident_update.php?resident_Id='.$user_Id.'');     

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
						header('Location: resident_update.php?resident_Id='.$user_Id.'');     
				    	$sign_uploadOk = 0;
				    }

				    // Check if $sign_uploadOk is set to 0 by an error
				    if ($sign_uploadOk == 0) {
					    $_SESSION['message'] = "Your file was not uploaded.";
					    $_SESSION['text'] = "Please try again.";
					    $_SESSION['status'] = "error";
						header('Location: resident_update.php?resident_Id='.$user_Id.'');     

				    // if everything is ok, try to upload file
				    } else {

				    		if (move_uploaded_file($_FILES["signature"]["tmp_name"], $sign_target_file)) {

				    				$save3 = mysqli_query($conn, "UPDATE users SET firstname='$firstname', middlename='$middlename', lastname='$lastname', suffix='$suffix', dob='$dob', age='$age', birthplace='$birthplace', gender='$gender', civilstatus = '$civilstatus', citizenship = '$citizenship', occupation = '$occupation', house_no = '$house_no', street_name = '$street_name', purok = '$purok', zone = '$zone', barangay = '$barangay', municipality = '$municipality', province = '$province', region = '$region', sector = '$sector', resident_status = '$resident_status', voter_status = '$voter_status', ID_status = '$ID_status', QR_status = '$QR_status', years_of_stay = '$years_of_stay', image='$file', digital_signature='$signature' WHERE user_Id='$user_Id'");
							      if($save3) {
							            $_SESSION['message']  = "Residents information has been updated!";
							            $_SESSION['text'] = "Updated successfully!";
								        $_SESSION['status'] = "success";
										header('Location: resident_update.php?resident_Id='.$user_Id.'');                          
							      } else {
							            $_SESSION['message'] = "Something went wrong while updating the information.";
							            $_SESSION['text'] = "Please try again.";
								        $_SESSION['status'] = "error";
										header('Location: resident_update.php?resident_Id='.$user_Id.'');     
							      }

				    		} else {
			    				$_SESSION['message'] = "There was an error uploading your digital signature.";
			           		    $_SESSION['text'] = "Please try again.";
						        $_SESSION['status'] = "error";
								header('Location: resident_update.php?resident_Id='.$user_Id.'');     
				    		}
				    }
		       			
		        } else {
		        	$_SESSION['message'] = "There was an error uploading your profile picture.";
		            $_SESSION['text'] = "Please try again.";
			        $_SESSION['status'] = "error";
					header('Location: resident_update.php?resident_Id='.$user_Id.'');     
		        }
			  }

		} else {

		    $save4 = mysqli_query($conn, "UPDATE users SET firstname='$firstname', middlename='$middlename', lastname='$lastname', suffix='$suffix', dob='$dob', age='$age', birthplace='$birthplace', gender='$gender', civilstatus = '$civilstatus', citizenship = '$citizenship', occupation = '$occupation', house_no = '$house_no', street_name = '$street_name', purok = '$purok', zone = '$zone', barangay = '$barangay', municipality = '$municipality', province = '$province', region = '$region', sector = '$sector', resident_status = '$resident_status', voter_status = '$voter_status', ID_status = '$ID_status', QR_status = '$QR_status', years_of_stay = '$years_of_stay' WHERE user_Id='$user_Id'");
	        if($save4) {
	          	$_SESSION['message']  = "Residents information has been updated!";
	            $_SESSION['text'] = "Updated successfully!";
		        $_SESSION['status'] = "success";
				header('Location: resident_update.php?resident_Id='.$user_Id.'');                          
	        } else {
	            $_SESSION['message'] = "Something went wrong while updating the information.";
	            $_SESSION['text'] = "Please try again.";
		        $_SESSION['status'] = "error";
				header('Location: resident_update.php?resident_Id='.$user_Id.'');     
	        }

		}
	
	}





	// UPDATE ADMIN INFORMATION - PROFILE.PHP
	if(isset($_POST['update_profile'])) {

		$user_Id    = $_POST['user_Id'];
		$username   = mysqli_real_escape_string($conn, $_POST['username']);
		$firstname  = mysqli_real_escape_string($conn, $_POST['firstname']);
		$middlename = mysqli_real_escape_string($conn, $_POST['middlename']);
		$lastname   = mysqli_real_escape_string($conn, $_POST['lastname']);
		$suffix     = mysqli_real_escape_string($conn, $_POST['suffix']);
		$contact    = mysqli_real_escape_string($conn, $_POST['contact']);
		$email      = mysqli_real_escape_string($conn, $_POST['email']);

		$save = mysqli_query($conn, "UPDATE users SET username='$username', firstname='$firstname', middlename='$middlename', lastname='$lastname', suffix='$suffix', email='$email', contact='$contact' WHERE user_Id='$user_Id'");
	    if($save) {
	          $_SESSION['message']  = "Your information has been updated!";
	          $_SESSION['text'] = "Updated successfully!";
	          $_SESSION['status'] = "success";
			  header("Location: profile.php");                          
	    } else {
            $_SESSION['message'] = "Something went wrong while saving the information.";
            $_SESSION['text'] = "Please try again.";
	        $_SESSION['status'] = "error";
			header("Location: profile.php");
	    }
	}


	// CHANGE ADMIN PASSWORD - PROFILE.PHP
	if(isset($_POST['update_password_admin'])) {

    	$user_Id    = $_POST['user_Id'];
    	$OldPassword = md5($_POST['OldPassword']);
    	$password    = md5($_POST['password']);
    	$cpassword   = md5($_POST['cpassword']);

    	$check_old_password = mysqli_query($conn, "SELECT * FROM users WHERE password='$OldPassword' AND user_Id='$user_Id'");

    	// CHECK IF THERE IS MATCHED PASSWORD IN THE DATABASE COMPARED TO THE ENTERED OLD PASSWORD
    	if(mysqli_num_rows($check_old_password) === 1 ) {
			// COMPARE BOTH NEW AND CONFIRM PASSWORD
    		if($password != $cpassword) {
				$_SESSION['message']  = "Password does not matched. Please try again";
            	$_SESSION['text'] = "Please try again.";
		        $_SESSION['status'] = "error";
				header("Location: profile.php");
    		} else {
    			$update_password = mysqli_query($conn, "UPDATE users SET password='$password' WHERE user_Id='$user_Id' ");
    			if($update_password) {
                	$_SESSION['message'] = "Password has been changed.";
		            $_SESSION['text'] = "Updated successfully!";
			        $_SESSION['status'] = "success";
					header("Location: profile.php");
                } else {
                    $_SESSION['message'] = "Something went wrong while changing the password.";
		            $_SESSION['text'] = "Please try again.";
			        $_SESSION['status'] = "error";
					header("Location: profile.php");
                }
    		}
    	} else {
			$_SESSION['message']  = "Old password is incorrect.";
            $_SESSION['text'] = "Please try again.";
	        $_SESSION['status'] = "error";
			header("Location: profile.php");
    	}

    }




  	// UPDATE ADMIN PROFILE - PROFILE.PHP
	if(isset($_POST['update_profile_admin'])) {

		$user_Id    = $_POST['user_Id'];
		$file       = basename($_FILES["fileToUpload"]["name"]);

		  // Check if image file is a actual image or fake image
	    $target_dir = "../images-users/";
	    $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
	    $uploadOk = 1;
	    $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

	    // Allow certain file formats
	    if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif" ) {
		    $_SESSION['message']  = "Only JPG, JPEG, PNG & GIF files are allowed.";
		    $_SESSION['text'] = "Please try again.";
		    $_SESSION['status'] = "error";
			header("Location: profile.php");
	    	$uploadOk = 0;
	    }

	    // Check if $uploadOk is set to 0 by an error
	    if ($uploadOk == 0) {
		    $_SESSION['message']  = "Your file was not uploaded.";
		    $_SESSION['text'] = "Please try again.";
		    $_SESSION['status'] = "error";
			header("Location: profile.php");

	    // if everything is ok, try to upload file
	    } else {

	        if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
	          	$save = mysqli_query($conn, "UPDATE users SET image='$file' WHERE user_Id='$user_Id'");
	     
	            if($save) {
	            	$_SESSION['message'] = "Profile picture has been updated!";
		            $_SESSION['text'] = "Updated successfully!";
			        $_SESSION['status'] = "success";
					header("Location: profile.php");
	            } else {
		            $_SESSION['message'] = "Something went wrong while updating the information.";
		            $_SESSION['text'] = "Please try again.";
			        $_SESSION['status'] = "error";
					header("Location: profile.php");
	            }
	        } else {
	            $_SESSION['message'] = "There was an error uploading your file.";
	            $_SESSION['text'] = "Please try again.";
		        $_SESSION['status'] = "error";
				header("Location: profile.php");
	        }

		}
	}





?>
