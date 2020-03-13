<?php //
//   
//
//
//
 include 'database.php';
//
//
     if(isset($_GET['email']) && !empty($_GET['email']) AND isset($_GET['hash']) && !empty($_GET['hash']))
{
    // Verify data
    $email = mysql_escape_string($_GET['email']); // Set email variable
    $hash = mysql_escape_string($_GET['hash']); // Set hash variable
echo $hash;
echo '<br>';
echo $email;



$query = mysqli_query($connect,"SELECT EMAIL_ID,HASH,ACTIVE FROM USER_INFO WHERE EMAIL_ID='$email' AND HASH='$hash' AND ACTIVE='0'") ;
 
$rows  = mysqli_num_rows($query);


echo $rows; // Display how many matches have been found -> remove this when done with testing ;)



 if($rows > 0){
        // We have a match, activate the account
        mysqli_query($connect,"UPDATE USER_INFO SET ACTIVE='1' WHERE EMAIL_ID='$email' AND HASH='$hash' AND ACTIVE='0'");
        echo '<div class="statusmsg">Your account has been activated, you can now login</div>';
		////creating remaining data of user
		
		
		
	mysqli_query($connect, "INSERT INTO CONT(UID) VALUES('$hash')");
		
    }else{
        // No match -> invalid url or account has already been activated.
        echo '<div class="statusmsg">The url is either invalid or you already have activated your account.</div>';
		 echo '<a href="./LOGIN/login.html" title="Already have account"><u>Login</u></a>';
    }
                 
}else{
    // Invalid approach
    echo '<div class="statusmsg">Invalid approach, please use the link that has been send to your email.</div>';
}
	?>
