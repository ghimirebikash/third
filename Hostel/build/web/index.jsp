
<!DOCTYPE html>

<head>
  <title>Hostel Management</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
  <style>
      body{
          background-image: url("y.jpg");background-repeat:no-repeat;background-size:cover;
          font-family:monospace;
   	 }
      .carousel-inner img {
      width: 100%;
      height: 100%;
  }
  .login{
          width: 50%;
    left:25%;
    position: relative;
    color:white;
  }
  .google{
   		    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
		    background: #df4930;
    	    padding: 8px 21px;
		    color: white;
		    text-decoration: none;
            border-radius: 5px; 
   	}
   	.google i{
   		    text-decoration: none;
		    font-size: 15px;
		    color: #e01515;
		    padding: 4px 8px 5px 7px;
		    box-sizing: border-box;
		    background: white;
		    margin-left: -11px;
		    border-radius: 3px;
   	}
	.facebook{
		    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
		    background: #3b5998;
		    color: white;
	    	padding: 8px 21px;
		    text-decoration: none;
		    border-radius: 5px; 
	}
   	.facebook i{
   		    text-decoration: none;
		    font-size: 15px;
		    color: #3a66ad;
		    padding: 4px 8px 5px 7px;
		    box-sizing: border-box;
		    background: white;
		    margin-left: -11px;
		    border-radius: 3px;
   	}
   	.left{
        margin: 32px;
	    position: relative;
	    width: 40%;
	    float: left;
	    text-align: center;
   	}
        .left_google i{
   		float: left;
   	}
   	.left_google a{
	    width: 30%;
    	display: inline-block;  
    	text-align: center;
    	line-height: 1.5;
   	}
   	.left_google a:last-child{
			margin-top: 20px;
   	} 
        .btn{
            color:white;
            font-size: 20px;
        }
        .login-check{
            color:white;
            font-size: 22px;
        }
        a{
            text-decoration: none;
        }
        a:hover{
            color:white;
        }
  </style>
</head>

 
     <div class="container-fluid" style="background-color:#2f3640;position:fixed;">
         <center><h1><font color="white">Hostel Management System</font></h1></center>
     </div>
<nav class="navbar bg-dark navbar-dark" style="z-index: 1;
    position: fixed;">
    <a class="navbar-brand" href="#" style="">
    <img src="h.png" alt="logo" style="width:27px;"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
    <nav class="navbar navbar-expand-sm bgk nabvar-dark">
  <ul class="navbar-nav">
    <li class="nav-item">
      
    </li>
  </ul>
    </nav>
    
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
  <ul class="navbar-nav">
    
    <li class="nav-item">
      <a class="nav-link" href="index.html">Dashboard</a>
    </li>
 
    <li class="nav-item">
      <a class="nav-link" href="#">Profile</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Complaint.html">Complaint</a>
    </li>
  </ul>
    </div>
</nav>
<br>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="Slide Login Form template Responsive, Login form web template, Flat Pricing tables, Flat Drop downs Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

	 <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>

	<!-- Custom Theme files -->
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
	<!-- //Custom Theme files -->

	<!-- web font -->
	<link href="//fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">
	<!-- //web font -->

</head>
<body>

<!-- main -->
<div class="login"> 
	<div class="bg-layer">
            <br>
            <br>
            <br>
            <center><h1> Login form</h1>
		<div class="header-main">
			<div class="main-icon">
				<span class="fa fa-eercast"></span>
			</div>
                   
			<div class="header-left-bottom">
				<form action="login" method="post">
					<div class="form-group">
                                        <span class="form-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="email" type="text" class="form-control" name="email" placeholder="Email">
                                      </div>
                                    
					<div class="form-group">
                                            <span class="fa fa-lock">
                                                <i class="glyphicon glyphicon-user"></i>
                                            </span>
						<input id="password" type="password" name ="password" class="form-control" placeholder="Password" required=""/>
					</div>
					<div class="login-check">
						 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i> Keep me logged in</label>
					</div>
					<div class="bottom">
						<input type="submit" class="btn" value="Login">
					</div>
					<div class="links">
						<p><a href="#">Forgot Password?</a></p>
						
						<div class="clear"></div>
                                        </div>
				</form>	
			</div>
			 <div class="left_google">
                 <ul class="social" style="display:grid">
                 <h3>Catch on Social</h3>
               <a class = "google" href="#">
                   <i class="fa fa-google">
                   </i>Continue with Google</a>
               <a class= "facebook" href="#">
                   <i class="fa fa-facebook">
                   </i>Continue with Facebook</a>
            </div>
		</div>
	</div>
</div>	
</center>
        </body>
        </html>

