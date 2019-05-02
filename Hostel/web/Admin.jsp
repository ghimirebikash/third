<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->   
<html lang="en">
<head>
  <title>Hostel Management System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
  <style>
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
            cursor: pointer;
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
 .panel-footer .btn:hover {
    border: 1px solid #f4511e;
    background-color: #fff !important;
    color: #f4511e;
  }
   .panel-footer {
    background-color: white !important;
  }
  .panel-footer h3 {
    font-size: 32px;
  }
  .panel-footer h4 {
    color: #aaa;
    font-size: 14px;
  }
  .panel-footer .btn {
    margin: 15px 0;
    background-color: #f4511e;
    color: #fff;
  }
  footer .glyphicon {
    font-size: 20px;
    margin-bottom: 20px;
    color: #f4511e;
  }
  
  .left_google{
      position: relative;
      right: 55px;
  }
  #myBtn {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  font-size: 18px;
  border: none;
  outline: none;
  background-color: red;
  color: white;
  cursor: pointer;
  padding: 15px;
  border-radius: 4px;
}

#myBtn:hover {
  background-color: #555;
}

  .student{
    text-align: center;
    color: white;
    width: 18%;
    background-color: #17a2b8;;
    margin: 24px;
    display: inline-block;
    padding: 13px;
  }
  .add{
    border: 1px solid;
    text-align: center;
    margin: 10px;
  }
  .del{
    border: 1px solid;
    text-align: center;
    margin: 10px;
  }

   .notice{
    text-align: center;
    color: white;
    width: 18%;
    background-color: #17a2b8;;
    margin: 24px;
    display: inline-block;
    padding: 13px;
  }
  .addN{
    border: 1px solid;
    text-align: center;
    margin: 10px;
  }
  .delN{
    border: 1px solid;
    text-align: center;
    margin: 10px;
  }
  .m{
    text-align: center;
  }
  .complaint{
    text-align: center;
    color: white;
    width: 18%;
    background-color: #17a2b8;;
    margin: 24px;
    display: inline-block;
    padding: 13px;
  }
  .addC{
    border: 1px solid;
    text-align: center;
    margin: 10px;
  }
  .delC{
    border: 1px solid;
    text-align: center;
    margin: 10px;
  }


  .modalC {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}
.modalS{
   display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}


/* Modal Content */
.modal-contentC {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
.cbody{
    padding-bottom: 12px;
    border-bottom: 1px solid black;
}
.addstudent{
    width: 36%;
    margin: auto;
}
.addstudent input{
  
  right: 100px;
}
  </style>
  <script>
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    document.getElementById("myBtn").style.display = "block";
  } else {
    document.getElementById("myBtn").style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}
</script>
<script>
    $(document).ready(function(){
       $(".addC").click(function(){
          $(".modalC").css("display","block");
        });
        $(".close").click(function(){
          $(".modalC").css("display","none");
        });
      });
</script>
<script>
    $(document).ready(function(){
       $(".add").click(function(){
          $(".modalS").css("display","block");
        });
        $(".close").click(function(){
          $(".modalS").css("display","none");
        });
      });
</script>
</head>

 <body >
     <button onclick="topFunction()" id="myBtn" title="Go to top"><i class="fa fa-arrow-up"></i></button>
     <div class="container-fluid" style="background-color:#2f3640;position:fixed;">
         <center><h1><font color="white">Hostel Management System</font></h1></center>
         <ul class="nav navbar-nav navbar-right">
      <li><a href="Login.html"><span class="glyphicon glyphicon-log-out"></span></a></li>
    </ul>
     </div>
<nav class="navbar bg-dark navbar-dark" style="z-index: 1;
    
    position: fixed;">
    <a class="navbar-brand" href="#" style="" >
        <img src="h.png" alt="logo" style="width:27px;">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
    <ul class="nav navbar-nav navbar-right">
        <li><a href="index.jsp"><i class="fa fa-sign-out" style="color: white;font-size: 25px;">Logout</i></a></li>
    </ul>
    <nav class="navbar navbar-expand-sm bgk nabvar-dark">
  <ul class="navbar-nav">
    <li class="nav-item">
      
    </li>
  </ul>
    </nav>
  
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
  <ul class="navbar-nav">
  </ul>
</nav>
<br>

<div> 
</div>

          <a class="carousel-control-prev" href="#demo" data-slide="prev" style="z-index:-1">
            <span class="carousel-control-prev-icon"></span>
          </a>
          <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
          </a>
        </div>
            <br>
            <br>

      <div class="m">
          <div class="student">
             <span>Student/Admin Pannel</span><br>
             <div class="add"><a>Add Student/Admin</a><br></div>
             <div class="del"><a>Delete Student</a></div>
             <div id="myModalC" class="modalS">
              <div class="modal-contentC">
                <span class="close">&times;</span>
                   <div class="cbody" style="color: black">
                       <form class="addstudent" action="addd">
                        <label>Name:</label><input type="text" name="name"><br>
                        <label>Password:</label><input type="text" name="pwd"><br>
                        <label>UserType:</label><br><input type="radio" name="ut" value="Admin">Admin<br>
                        <input type="radio" name="ut" value="User">User<br>
                        <input type="submit" value="Submit">
                      </form>
                   </div>
              </div>
          </div>
          </div>

          <div class="notice">
             <span>Notice Pannel</span><br>
             <div class="addN"><a href="notice.jsp">Add Notice</a><br></div>
             <div class="delN"><a>Delete Notice</a></div>
          </div>

          <div class="complaint">
             <span>Complaints Pannel</span><br>
             <div class="addC"><a>Show Complaints</a><br></div>
             <div class="delC"><a>Delete Complaints</a></div>
              <div id="myModalC" class="modalC">
              <div class="modal-contentC">
                <span class="close">&times;</span>
                   
          <% try{
                             Class.forName("org.apache.derby.jdbc.ClientDriver");
                            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/details","root","2486");
                            Statement stmt = con.createStatement(); 
                            String query = "select * from complaints";
                            out.println("dfghjkm,");
                            ResultSet rs=stmt.executeQuery(query);
                           
                            while(rs.next()){
                                %>
                        <div class="cbody" style="color: black">
                            <span style="float: left;">Name : </span><h style="float: left;"><%out.println(rs.getString(3));%></h><br>
                            <samp style="float: left;">Mobile : </samp><h style="float: left;"><%out.println(rs.getString(2));%></h><br>
                            <span style="float: left;">Complaint Type : </span><h style="float: left;"><%out.println(rs.getString(4));%></h><br>
                            <samp style="float: left;">Complaint : </samp><h style="float: left;"><%out.println(rs.getString(1));%></h><br>
                        </div>
                        <%
                           }
                    }
                    catch (Exception e) {
                        out.println("Error");
                    }                
                %>
              </div>
          </div>
      </div> 


        <div class="jumbotron text-center" style="margin-bottom:0; height:30%">
          
        <div class="footer">
            <div class="wrap">
                <div class="foot-logo">
                <img src="d.jpg"  style="position:absolute;left:90%;width:10%;height:10">

                <div class=""foot-links">
                     <ul style="list-style: none;float: left;">
                         <h3>Links</h3>
                         <li>
                             <a href="dashboard.html">Dashboard</a>
                         </li>
                         <li>
                             <a href="Profile.jsp"> Profile</a>
                         </li>
                         <li>
                             <a href="complaint.html">Complaint</a>
                         </li>
                    </ul>
                     <div class="left_google">
                         <ul class="social">
                         <h3>Catch on Social</h3>
                       <a class = "google" href="https://www.google.com/">
                           <i class="fa fa-google">
                           </i>Continue with Google</a><br>
                       <a class= "facebook" href="https://www.facebook.com/">
                           <i class="fa fa-facebook">
                           </i>Continue with Facebook</a>
            </div>
                </div>
                </div>
        </div>
        </div>

        <footer class="container-fluid text-center">
          <a href="#myPage" title="To Top">
            <span class="glyphicon glyphicon-chevron-up"></span>
          </a>
        </footer>
        <div class="copyright text-center mt-3">
        <!--    <div class="container-fluid" style="background-color:#2f3640;position:fixed;">
                 <center><h1><font color="white">Design by:BAS</font></h1></center>
             </div>-->
        <br>
        <br>
        <div class="copyright">
              <p>© 2019 Hostel Management System. All rights reserved | Design by BAS</p>
            </div>

        <div class="left">
        </div>
        </div>
</body>
</html>

   
