<%@page import="java.sql.*" %>

<% 
	
	String un=(String)session.getAttribute("firstname");
	if(un!=null)
	{
		%>
<!DOCTYPE html>
<html>
<head>
  
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<title>Ok</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">



</head>
<style>
  body {
    font-family: Arial, Helvetica, sans-serif;
  }
  
  .navbar {
    overflow: hidden;
    background-color:rgb(25, 202, 202);
  }
  
  .navbar a {
    float: left;
    font-size: 16px;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
  }
  
  .dropdown {
    float: left;
    overflow: hidden;
  }
  
  .dropdown .dropbtn {
    font-size: 16px;  
    border: none;
    outline: none;
    color: white;
    padding: 14px 16px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
  }
  
  .navbar a:hover, .dropdown:hover .dropbtn {
    background-color: rgb(24, 204, 195);
  }
  
  .dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
  }
  
  .dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
  }
  
  .dropdown-content a:hover {
    background-color: #ddd;
  }
  
  .dropdown:hover .dropdown-content {
    display: block;
  }
  
  header{
        background: url(header-cover.jpg);
        background-size: cover;
        height: 100vh;
        position: relative;
        overflow: hidden;
    }
    header:after{
        content: '';
        position: absolute;
        bottom: 0;
        width: 100%;
        background-image: url();
        height: 275px;
    }
    .header-content{
        z-index: 1;
        position:relative;
    }
    .header-content h1{
        font-size: 45px;
        font-weight: bold;
        text-transform: capitalize;
        color: white;
    }
    .header-content p{
        font-size: 20px;
        margin: 20px 0 25px;
        color: white;
        letter-spacing: 1px;
        font-weight: 300;
        text-transform: capitalize;
    }
    .theme-btn{
        border-radius: 50px;
        background:white;
        padding: 15px 30px;
        min-width: 170px;
        border:2px solid white;
        color:black;
        font-size: 14px;
        text-transform: uppercase;
        margin-top: 13px;
        display: inline-block;
        text-align: center;
        margin-right: 12px;
        transition: all 0.5s ease-in;
        font-weight: bold;
    }
    .theme-btn:hover{
        text-decoration: none;
        background-color: white;
        color: #333;
    }
    ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  border: 1px solid #4fdaec;
  background-color: #4fdaec;
}

li {
  float: left;
}

li a {
  display: block;
  color: #666;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #ddd;
}

li a.active {
  color: white;
  background-color: #4CAF50;
}
.w3-card{
    margin-left: 50px;
    height: 350px;
    width: 350px;
}

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
footer{
   background: #111;
   height: auto;
   width: 100vw;
   font-family: "Open Sans"; 
   padding-top:40px;
   color: #fff;
}
.footer-content{
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    text-align: center;
}
.footer-content h3{
    font-size: 1.8rem;
    font-weight: 400;
    text-transform: capitalize;
    line-height: 3rem;
}
.footer-content p{
    max-width: 500px;
    margin: 10px auto;
    line-height: 28px;
    font-size: 14px;
}
.socials{
    background-color: #000 ;
    list-style: none;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 1rem 0 3rem 0;
}
.socials li{
    margin:0 10px;
}
.socials a{
    text-decoration: none;
    color: #fff;
}
.socials a i{
    font-size: 1.1rem;
    transition: color .4s ease;
}
.socials a:hover{
    color: aqua;
}
.footer-bottom{
    background: #000;
    width: 100vw;
    padding: 20px 0;
    text-align: center;

}
.footer-content p{
    font-size: 14px;
    word-spacing: 2px;
    text-transform: capitalize;
}
.footer-bottom span{
    text-transform: uppercase;
    opacity: .4;
    font-weight: 200;
}
  </style>
<body>

<div class="navbar">
  <a href="home.html" style="font-size: x-large; font-weight: bold;">College Sketch</a>
  <a href="home.html" style="font-size: large; margin-top: 7px;">Home</a>
  <a href="newabout.html" style="font-size: large;margin-top: 7px;">AboutUs</a>
  <div class="dropdown" style="margin-left: 800px;">
    <button class="dropbtn" style="font-size: large;margin-top: 7px;">Menu 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="viewprofile.jsp">View Profile</a>
      <a href="forgotpage.jsp">Change Password</a>
      <a href="feedbacks.jsp">Feedback</a>
      <a href="newabout.html">About Us</a>
      <a href="logout.jsp">Logout</a>
    </div>
  </div> 
</div>

	<center>
			 <div class="w3-panel w3-card">
			    <jsp:include page="forgot.html"></jsp:include>
			 </div>                  
	</center>




   

    <br><br>
<footer>
        <div class="footer-content">
            <h3>College Sketch</h3>
            <p>Website developed by Batch-18 as a part of Enterprise Programming Course</p>
            <!--<ul class="socials">
                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>

            </ul>-->
        </div>
        <div class="footer-bottom">
            <p>copyright &copy;2021 College Sketch. designed by <span>EP project batch-18</span></p>

        </div>
    </footer>

</body>
</html>

			
		<%
	}
	else{
		%>
		<jsp:include page="home.jsp"></jsp:include>
		<%
	}
	
%>

