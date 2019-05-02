<%-- 
    Document   : notice
    Created on : Apr 2, 2019, 2:35:05 PM
    Author     : Simran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        
  <title>Hostel Management System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
  <style>
      body{
          background-image: url("b.jpg");
          text-color:white;
          font-family: monospace;
          background-repeat:no-repeat;
          background-size:cover;
      }
      
      .modal-header, h4, .close {
    background-color: #5cb85c;
    color:white !important;
    text-align: center;
    font-size: 30px;
  }
  .tabBlock
        {
            background-color:#57574f;
            border:solid 0px #FFA54F;
            border-radius:5px; -moz-border-radius:5px; -webkit-border-radius:5px;
            max-width:200px;
            width:100%;
            overflow:hidden;
            display:block;
            
        }
        .clock
        {
            vertical-align:middle;
            font-family:Orbitron;
            font-size:40px;
            font-weight:normal;
            color:#FFF;
            padding:0 10px;
           
        }
        .clocklg 
        {
            vertical-align:middle; 
            font-family:Orbitron;
            font-size:20px;
            font-weight:normal;
            color:#FFF;
            
        }
  .modal-footer {
    background-color: #f9f9f9;
  }
      .carousel-inner img {
      width: 100%;
      height: 100%;
  }
  .google{
   		    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
		    background: #df4930;
    	    padding: 8px 21px;
		    color: white;
		    text-decoration: none;
            border-radius: 5px; 
   	}
        a{
            text-decoration: none;
        }
        a:hover{
            color:white;
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
            text-decoration: none;
	    width: 30%;
    	display: inline-block;  
    	text-align: center;
    	line-height: 1.5;
   	}
   	.left_google a:last-child{
			margin-top: 20px;
   	} 
  </style>
</head>

 <body onload="digitized();">
     
      <div style="margin-top:40%;position:relative;
        max-width:220px;width:80%;height:10%;max-height:200px;margin:right;margin:60px;padding:10px; float:right;">

        <table class="tabBlock" align="left" cellspacing="2" cellpadding="2" border="0">
            <tr><td class="clock" id="dc"></td>  <!-- THE DIGITAL CLOCK. -->
                <td>
                    <table cellpadding="0" cellspacing="0" border="0">
                    
                        <!-- HOUR IN 'AM' AND 'PM'. -->
                        <tr><td class="clocklg" id="dc_hour"></td></tr>

                        <!-- SHOWING SECONDS. -->
                        <tr><td class="clocklg" id="dc_second"></td></tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
     
     <div class="container-fluid" style="background-color:#2f3640;position:fixed;">
         <center><h1><font color="white">Hostel Management System</font></h1></center>
         <ul class="nav navbar-nav navbar-right">
      <li><a href="Login.html"><span class="glyphicon glyphicon-log-out"></span></a></li>
    </ul>
     </div>
<nav class="navbar bg-dark navbar-dark" style="z-index: 1;
    
    position: fixed;">
    <a class="navbar-brand" href="#" style="">
    <img src="h.png" alt="logo" style="width:27px;"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
    <ul class="nav navbar-nav navbar-right">
        <li><a href="Login.html"><i class="fa fa-sign-out" style="color: white;font-size: 25px;">Logout</i></a></li>
    </ul>
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
      <a class="nav-link" href="Profile.jsp">Profile</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Complaint.html">Complaint</a>
    </li>
  </ul>
</nav>
     <br>
 
<script>
$(document).ready(function(){
  $("#myBtn").click(function(){
    $("#myModal").modal();
  });
});
</script>
<h1>Hello World!</h1>
        <form style="border:2px solid black;margin-left: 500px;width:400px;height:400px;overflow:scroll">
            <a href="#"><h1>she is a new breed of a monkeys lets start and she is so down to earth</h1></a>
            <a href="#"><h1>she is a new breed of a monkeys lets start and she is so down to earth</h1></a>
            <a href="#"><h1>she is a new breed of a monkeys lets start and she is so down to earth</h1></a>
            <a href="#"><h1>she is a new breed of a monkeys lets start and she is so down to earth</h1></a>
            <a href="#"><h1>she is a new breed of a monkeys lets start and she is so down to earth</h1></a>
            <a href="#"><h1>she is a new breed of a monkeys lets start and she is so down to earth</h1></a>
            <a href="#"><h1>she is a new breed of a monkeys lets start and she is so down to earth</h1></a>
        </form>
 <div class="left_google">
     <ul class="social" style="display:grid;">
                 <h3>Catch on Social</h3>
               <a class = "google" href="https://www.google.com/">
                   <i class="fa fa-google">
                   </i>Continue with Google</a>
               <a class= "facebook" href="https://www.facebook.com/">
                   <i class="fa fa-facebook">
                   </i>Continue with Facebook</a>
            </div>
		</div>
	</div>
</div>	
 </body>
</html>

   