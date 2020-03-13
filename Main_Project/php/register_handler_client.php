<?php
	require('./../config/config.php');
if(isset($_POST['register'])){
	$first=$_POST['first'];
	$last=$_POST['last'];
	$email=$_POST['email'];
	$pass=$_POST['pass'];
	$dob=$_POST['dob_f'];
	$city=$_POST['city'];
	$phone=$_POST['phone'];
	$address=$_POST['address'];
	if(empty($first)){
		$f_err="Please enter a First name!";
	}
	else{
		//echo $first."<br />";
	}
	if(empty($last)){
		$l_err="Please enter a Last name!";
	}
	else{
		//echo $last."<br />";
	}
	if(empty($email)){
		$email_err="Please enter a E Mail!";
	}
	else{
		//echo $email."<br />";
	}
	if(empty($pass)){
		$pass_err="Please enter a password."."<br />";
	}
	if(empty($dob)){
		$dob_err="Please enter Date of Birth!";
	}
	else{
		//echo $dob."<br />";
	}
	if(empty($city)){
		$phone_err="Please enter a City."."<br />";
    }
	if(empty($phone)){
		$phone_err="Please enter a Phone_no."."<br />";
    }
	

	$query_select= "SELECT * from `administration` where `email_db`='$email'";
	$query_select_op = mysqli_query($con,$query_select);
	$count= mysqli_num_rows($query_select_op);
	if($count==0)
	{
		$user_id='C'.rand(10,1000000);
		$query0 = "INSERT into `client` (`cust_id_db`,`first_name_db`, `last_name_db`,`dob_db`, `city_db`, `telephone_db`,`address_db`)";
		$query0 .= "VALUES ('$user_id','$first', '$last','$dob', '$city','$phone','$address')";		   
  		$query1 = mysqli_query($con, $query0);
  		 if(!$query1)
   		{
			die(mysqli_error($con));
  		}
		 else
		{ 
			 //  echo "You are all set. Go, Explore!";
		}
		//$users=rand(10,1000);
		$username=$first.'_'.$last.'_'.$user_id;
		$query0 = "INSERT into `administration` ( `email_db`, `username_db`, `password_db`,`cust_id_db`,`deleted`,`deactivate_db`)";
		$query0 .= "VALUES ('$email', '$username',  '$pass','$user_id','no','no')";		   		   
  		 $query1 = mysqli_query($con, $query0);
  		 if(!$query1)
   		{
			die(mysqli_error($con));
  		}
		 else
		{ 
			  // echo "You are all set. Go, Explore!";
			$msg = 'Your account has been made, <br /> please verify it by clicking the activation link that has been send to your email.';
 			//echo $msg;
 			//echo  $_SERVER['DOCUMENT_ROOT'];
			//////////////////////////////verification statreted
			$to= $email; // Send email to our user
			$subject = 'Signup | Verification'; // Give the email a subject 
			$message = ' 
				Thanks for signing up!
				Your account has been created, you can login with the following credentials after you have activated your account by pressing the url below.
 
				------------------------
				Username: '.$first.'
				Email: '.$email.'
				Password: '.$pass.'
				------------------------
 
				Please click this link to activate your account:
				http://localhost/after%20inhouse/Main_Project/verify.php?email='.$email.'&hash='.$user_id.'
				'; // Our message above including the link         
			$headers = 'From:noreply@yourwebsite.com' . "\r\n"; // Set from headers
			mail($to, $subject, $message, $headers); // Send our email
			echo $message;
			//header('Location: ./../login.php');
		}
	}
	else
	{
		echo "This Username already exists!";
	}
}
else
{
	echo "";
}
?>                    