<?php include 'database.php';?>
<?php


$date = date('Y-m-d H:i:s');
$sender = $_SERVER["HTTP_HOST"];
 


////////////////////////////////////ADDING TO DATABASE

// create a variable
$NAME_USER=$_POST["uname"];
$EMAILID=$_POST["EMAIL_ID"];
$PASSWORD=$_POST["psw"];

$from=$sender;
$hash = md5( rand(0,1000) ); // Generate random 32 character hash and assign it to a local variable.
// Example output: f4552671f8909587cf485ea990207f3b
///////////////////////checking email id format

//Execute the query
//if(!eregi("^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$", $EMAILID)){
    // Return Error - Invalid Email
  ///  $msg = 'The email you have entered is invalid, please try again.';
//}else{
    // Return Success - Valid Email
  //  $msg = 'Your account has been made, <br /> please verify it by clicking the activation link that has been send to your email.';
//}
mysqli_query($connect, "INSERT INTO USER_INFO(USER_NAME,EMAIL_ID,PASS_WORD,HASH,DATE_CREA,REFERER) VALUES('$NAME_USER','$EMAILID','$PASSWORD','$hash','$date','$from')");


 if(mysqli_affected_rows($connect) > 0){;} else {;}
///////////////////////////////
$msg = 'Your account has been made, <br /> please verify it by clicking the activation link that has been send to your email.';
 echo $msg;
 echo  $_SERVER['DOCUMENT_ROOT'];
//////////////////////////////verification statreted
$to      = $EMAILID; // Send email to our user
$subject = 'Signup | Verification'; // Give the email a subject 
$message = '
 
Thanks for signing up!
Your account has been created, you can login with the following credentials after you have activated your account by pressing the url below.
 
------------------------
Username: '.$NAME_USER.'
Email: '.$EMAILID.'
Password: '.$PASSWORD.'
------------------------
 
Please click this link to activate your account:
http://localhost/whey_industry/verify.php?email='.$EMAILID.'&hash='.$hash.'
 
'; // Our message above including the link
                     
$headers = 'From:noreply@yourwebsite.com' . "\r\n"; // Set from headers
mail($to, $subject, $message, $headers); // Send our email

?>