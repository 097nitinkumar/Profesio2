<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Profesi&#243; (Skill Allocation System)</title>
	<!-- CSS -->
	<link rel="stylesheet" href="./assets/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="./assets/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="./assets/css/style.css">
	<!--<link rel="stylesheet" href="./assets/css/jquery.Jcrop.css" type="text/css">-->
	<?php 
		require('./config/config.php');	
		require('./config/client_or_employe.php');
	?>
	<!-- for new feeds -->
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
    <script type="text/javascript" src="./assets/js/jquery.min.js"></script>
	<script type="text/javascript">
		// jQuery Document
		$(document).ready(function(){
			//Load the file containing the chat log
			function loadLog(){		
				var oldscrollHeight = $("#load_feeds").attr("scrollHeight") - 20;
				$.ajax({
					url: "./php/message_display.php",
					cache: false,
					success: function(html){		
						$("#load_feeds").html(html); //Insert chat log into the #chatbox div							
		  			},
				});
			}
			setInterval (loadLog, 1000);	//Reload file every 10 seconds
		});
	</script>
	<!-- for new feeds -->
</head>
<body>
	<div class="top_bar"> 
		<div class="logo">
			<a href="./feeds_edited.php">Profesi&#243;</a>
		</div>
		<div class="search">
			<form action="./php/search_handler.php" method="GET" name="search_form">
				<input type="text"  name="q" placeholder="Search..." autocomplete="off" id="search_text_input">
				<div class="button_holder">
					<img src="./assets/images/icons/magnifying_glass.png">
				</div>
			</form>
			<div class="search_results">
			</div>
			<div class="search_results_footer_empty">
			</div>
		</div>
		<nav>
			<a href="./feeds_edited.php"><?php echo $f_name.''.$l_name; ?></a>
			<a href="./feeds_edited.php"><i class="fa fa-home fa-lg">Home</i></a>
			<a href="./messages.php" ><i class="fa fa-envelope fa-lg">Message</i></a>
			<a href="./notification.php" ><i class="fa fa-bell fa-lg"   >Notification</i></a>
			<?php  
				if($_SESSION['is_employee_logged_in']=="yes")
				{
					echo '<a href="./request.php"><i class="fa fa-users fa-lg">Request</i></a>';
					echo '<a href="./services_done.php"><i class="fa fa-users fa-lg">Complete Service</i></a>';
				}
			?>
			<a href="./settings.php"><i class="fa fa-cog fa-lg">Settings</i></a>
			<a href="./php/logout.php"><i class="fa fa-sign-out fa-lg">Logout</i></a>
		</nav>
		<div class="dropdown_data_window" style="height:0px; border:none;">
		</div>
		<input type="hidden" id="dropdown_data_type" value="">
	</div>	
	<div class="wrapper">	
		<div class="user_details column">
			<a href="./feeds_edited.php">  
				<img src="<?php echo $user_image_link;?>"> 
			</a>
			<div class="user_details_left_right">
				<a href="./feeds_edited.php">
					<?php echo $f_name.''.$l_name; ?>	
					<br>
				</a>
				<br>	
			</div>
		</div>
		<div class="main_column column" id="load_feeds">
			<div class="main_column column">
			</div>						
		</div>
		<div class="user_details column">
			<h4>Popular</h4>
			<div class="trends">
			<?php 
				$query1=mysqli_query($con,"SELECT DISTINCT `profession_db` FROM `employee`");
				while($results=mysqli_fetch_array($query1))
				{   
					echo '<div style="padding:1px;"><a href="./php/search_handler.php?q='.$results['profession_db'].'">'.$results['profession_db'].'</a><br></div>';
				}		
			?>
		</div>
		<br>
	</div>
<!--</div>-->
</body>
</html>