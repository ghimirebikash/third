<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html lang="en">
<head>
     <!-- Custom Theme files -->
  <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
  <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
  <link href="//fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <style>
        .suraj{
            background-color: white;
            color: black;
            padding: 10px;
        }
        .s1{
            border: 1px solid #ab1717;
    padding: 10px;
    margin-bottom: 16px;
    border-radius: 5px;
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
    .left_google{
        position: relative;
        top:140px;
        float: right;
        width: 60%;
        left:130px;
        
    }
    .left_google h3{
        left:150px;
        position:relative;
        color:white;
        font-family: monospace;
    }
    
        .left_google i{
      float: left;
      position: relative;
    }
    .left_google a{
      text-decoration: none;
      width: 30%;
      display: inline-block;  
      text-align: center;
      line-height: 1.5;
      color:white;
    }
    .left_google a:last-child{
      margin-top: 20px;
    } 
        </style>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
  <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
  <!-- //Custom Theme files -->

  <!-- web font -->
  <link href="//fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">
  <!-- //web font -->
  <title>Hostel Management System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
  <style type="text/css">
      body{
          background-image: url("k.jpg");background-repeat:no-repeat;
     }
         .profile{
            position: relative;
            top:100px;
            float:right ;
            right: 150px;
            width: 500px;
            display: inline-flex;
            border: 1px solid #efefef;
            background-color: #fff;
            border-radius: 4px;
            border-bottom: 1px solid #e2e2e2;
            padding: 10px 10px 10px 16px;
        }
        .profile_left{
            float: right;
            width: 155px;
            padding: 4px 1px 0px 0px;
        }
        .profile_left img:hover{
            opacity: .5;
        }
        .profileimage_edit:hover{
            opacity: 1;
        }
        .profile_left img{
            width: 100%;
            border-radius: 50%;
        }
        .profileimage_edit{
            opacity: .1;
            position: relative;
            bottom: 28px;
            border: 1px solid transparent;
            padding: 7px 30px 6px 49px;
            background: rgba(0,0,0,0.5);
            border-radius: 3px;
            color:white;
        }
        .profileimage_edit a{
            text-decoration: none;
            color: white;
            font-family: monospace;
        }
        .profile_mid{
            position: relative;
            top: 10px;
            left: 30px;
            height: 149px;
            width: 230px;
        }
        .profile_mid_name{
            font-family: 'q_serif',Georgia,Times,"Times New Roman","Hiragino Kaku Gothic Pro","Meiryo",serif;
            font-weight: bold;
            line-height: 1.3;
            color: #333;
            font-size: 26px;
        }
        .profile_mid a{
            text-decoration: none;
            line-height: 1.5;
            color: #6669;
            font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
        }
        .profile_mid a:hover{
            text-decoration: underline;
        }
        .edit_photo{
            display: none;
            height: 63%;
            position: absolute;
            top: 22%;
            left: 28.5%;
            border: 1px solid #ccc;
            width: 540px;
            border-radius: 4px;
        }
        .upload{
            height: 85%;
            border: 2px #7b757596;
            border-style: dashed;
            padding: 10px 10px 10px 10px;
            margin: 16px;
        }
        .upload button{
            position: relative;
            top: 29%;
            left:29%;
            color: #eae7e7ba;
            font-size: 21px;
            padding: 3px 18px 3px 19px;
            border: 1px solid transparent;
            border-radius: 3px;
            background: #234462bd;
        }
        .upload input{
           position: relative;
            top: 50%;
            left: 18%;
            font-size: 19px;
            border-radius: 5px;
            border: 2px solid #b1aeae;
            border-style: dashed;
            padding: 10px 10px 10px 46px;
            width: 56%;
        }
        .upload i{
            position: relative;
            top: -46px;
            left: 132px;
            color: #6669;
        }
        .upload i:hover{
            color: black;
        }
        .container{
            position: relative;
    float: left;
    left: 50px;
    color: white;
    font-family: monospace;
    font-size: 17px;
    top: 70px;
    width: 37%;
        }
        .container h{
            position: relative;
            left: 35%;
        }
        .btn{
            background-color: #8c1313;
            color:white;
            font-family: monospace;
            padding: 7px 7px 7px 7px;
        }
      </style>
      </head>

 <body>
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
      <a class="nav-link" href="Login.html">Dashboard</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Profile.jsp">Profile</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Complaint.html">Complaint</a>
    </li>
  </ul>
    </div>
</nav>
     <div>
<div class="container">
    <h>Profile</h>
    <%! int count=0;%>
   <% try{
         Class.forName("org.apache.derby.jdbc.ClientDriver");
         Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/details","root","2486");
         Statement stmt = con.createStatement(); 
         String query = "select * from profile";
         ResultSet rs=stmt.executeQuery(query);
         String user = (String)session.getAttribute("user");
         while(rs.next()){
             if(user.equals(rs.getString(3))){
                  //out.println(user);                 
                 count = 1;
                 break;
             }
         }
        }
         catch(Exception e){
             out.println(e);
                 }
             %>
    <% if(count==0){%>
  <form action="profile" method="post">
      
    <div class="form-group">
      <label for="name">First Name:</label>
      <input type="text" class="form-control" id="name" name="FirstName" placeholder="Enter Firstname">
    
    </div>
      <div class="form-group">
      <label for="name">last Name:</label>
      <input type="text" class="form-control" id="name" name = "LastName" placeholder="Enter Lastname">
    </div>
<!--      <div class="form-group">
      <label for="email">Email Adresses:</label>
      <input type="email" class="form-control" id="email" name="Email" placeholder="Simranguliani15@gmail.com">
    </div>-->
      <div class="form-group">
      <label for="name">Father's Name:</label>
      <input type="text" class="form-control" id="name" name="FathersName" placeholder="Enter Father's name">
    </div>
      <div class="form-group">
      <label for="name">Mother's Name:</label>
      <input type="text" class="form-control" id="name" name="MothersName" placeholder="Enter Mother's name">
    </div>
      <div class="form-group">
      <label for="name">Hostel Name:</label>
      <input type="text" class="form-control" id="name"  name="HostelName"placeholder="Enter Hostelname">
    </div>
      <div class="form-group">
      <label for="name">Room no.:</label>
      <input type="text" class="form-control" id="name"  name="RoomNo"placeholder="Enter Roomno.">
    </div>
      <div class="form-group">
      <label for="name">Blood Group:</label>
      <input type="text" class="form-control" id="name"  name="BloodGroup" placeholder="Enter Bloodgroup">
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
    <%}
    else{
          Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/details","root","2486");
         Statement stmt = con.createStatement(); 
         String query = "select * from profile";
         ResultSet rs=stmt.executeQuery(query);
         String user = (String)session.getAttribute("user");
         while(rs.next()){
            if(user.equals(rs.getString(3))){
       %>
    <div class="suraj">
        <div class = "s1"><span>Name : </span><%out.println(rs.getString(1) +" "+rs.getString(2));%><b></div>
        <div class = "s1"><span>Fathers Name : </span><%out.println(rs.getString(4));%><br></div>
        <div class = "s1"><span>Mothers Name : </span><%out.println(rs.getString(5));%><br></div></a>
        <div class = "s1"><span>Hostel Name : </span><%out.println(rs.getString(6));%><br></div>
        <div class = "s1"><span>Room No : </span><%out.println(rs.getString(7));%><br></div>
        <div class = "s1"><span>Blood Group : </span><%out.println(rs.getString(8));%></div>
    </div> 
    <%
        }
    }
    }
    %>
</div>
     <div class="profile"> 
         <div class="profile_left">
             <img id="#img" src="r.png"> 
             <span class="profileimage_edit">
                 <a id="hide">Edit Photo</a></span>
         </div> 
         <div class="profile_mid"> 
             <span class="profile_mid_name"><%out.println(session.getAttribute("user"));%></span> 
             <a href="">Add Profile Credential</a> <a href="">Add Description</a> 
         </div> </div> <div class="edit_photo"> <form style="height: 100%"> <
                 div class="upload"> 
                 <button type="subit">Upload an Image</button><br> 
                 <input type="file" name="image" id="file"> <i class="fa fa-times" id="cross"></i> 
         </div>
     </div>
            <div class="left_google">
                 <ul class="social">
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
</body>
</html>