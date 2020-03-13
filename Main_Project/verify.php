<?php 
require('./config/config.php');
if(isset($_GET['email']) && !empty($_GET['email']) AND isset($_GET['hash']) && !empty($_GET['hash']))
{
    // Verify data
    $email = $_GET['email']; // Set email variable
    $hash = $_GET['hash']; // Set hash variable
    echo $hash;
    echo '<br>';
    echo $email;
    $query = mysqli_query($con,"SELECT * FROM `administration` WHERE `email_db`='$email' AND `cust_id_db`='$hash' AND `active_db`='0'") ;
    $rows  = mysqli_num_rows($query);
    echo $rows; // Display how many matches have been found -> remove this when done with testing ;)
    if($rows > 0){
        // We have a match, activate the account
        mysqli_query($con,"UPDATE `administration` SET `active_db`='1' WHERE `email_db`='$email' AND `cust_id_db`='$hash' AND `active_db`='0'");
        echo '<div class="statusmsg">Your account has been activated, you can now login</div>';
		////creating remaining data of user
    }
    else
    {
        // No match -> invalid url or account has already been activated.
        echo '<div class="statusmsg">The url is either invalid or you already have activated your account.</div>';
		echo '<a href="./login.php" title="Already have account"><u>Login</u></a>';
    }
}
else
{
    echo '<div class="statusmsg">Invalid approach, please use the link that has been send to your email.</div>';
}
?>