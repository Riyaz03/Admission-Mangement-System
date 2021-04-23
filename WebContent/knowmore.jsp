<%@ page import="java.sql.*" %>
<%
//out.println(request.getParameter("clgname"));
String ems=(String)session.getAttribute("email");
%>
<!DOCTYPE html>
<html>
<head>
  
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<title>College Sketch</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>



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
  .w3-card{
      margin-left: 50px;
      height: 300px;
      width: 1300px;
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
    height: 200px;
    width: 1300px;
}
.inside{
    margin-left: 30px;
    height: 180px;
    width: 385px;
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
  <a href="home.jsp" style="font-size: x-large; font-weight: bold;">College Sketch</a>
  <a href="home.jsp" style="font-size: large; margin-top: 7px;">Home</a>
  
  <a href="newabout.html" style="font-size: large;margin-top: 7px;">AboutUs</a>
  
  
  
  <div class="dropdown" style="margin-left: 810px;">
    <button class="dropbtn" style="font-size: large;margin-top: 7px;">Menu 
      <i class="fa fa-caret-down"></i>
    </button>
     <div class="dropdown-content">
      <a href="viewprofile.jsp">View Profile</a>
      <a href="forgotpage.jsp">Change Password</a>
      <a href="feedbacks.jsp">Feedback</a>
      <a href="newabout.html">Contact Us</a>
      <a href="logout.jsp">Logout</a>
    </div> 
  </div> 
</div>
<%
if(ems!=null)
{
	//out.println(request.getParameter("clgname"));
	//out.println(request.getParameter("ts"));
	//int m=request.getParameter("ts");
		try{
				Connection con=null;
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","epproject","epproject");
				String ts=request.getParameter("ts");
				
				if(ts.equals("1"))
				{
					
					PreparedStatement pstmt=con.prepareStatement("select * from universities where name=?");
					pstmt.setString(1,request.getParameter("clgname"));
					ResultSet rs=pstmt.executeQuery();
					if(rs.next())
					{
						String name=rs.getString(1);
						%>					
						<div class="w3-panel w3-card">
						  <div class="w3-row">
						          <div class="w3-col s4" >
						          		<br><br>
							          <i class='fas fa-map-marker-alt' style='font-size:60px;margin-left:150px;color:blue;'></i>
							          <br><br><h4 style="font-family: Lucida Console, Courier New, monospace;color:green;">Location:<%=rs.getString(2) %></h4>
						          </div>
						          <div class="w3-col s4">
						          			<h2 style="font-family: Times New Roman, Times, serif;color:red;text-decoration:underline;" align="center"><%=rs.getString(1) %></h2>
						          			<div class="w3-panel w3-card inside">
						          			<img src="unimagedisplay.jsp?name=<%=name%>" class="w3-round" height="180" width="350">
									        </div>
						          </div>
						          <div class="w3-col s4">
							          <br><br>
							          <i class='fas fa-chalkboard-teacher' style='font-size:60px;margin-left:150px;color:blue;'></i>
							          <br><br><h4 style="font-family: Lucida Console, Courier New, monospace;color:green;">&nbsp;Director:<%=rs.getString(5)%></h4>
						          </div>
						          
						</div>
						<%
					}
					else{
						out.println("no records");
					}
				}
				else if(ts.equals("2"))
				{
					PreparedStatement pstmt=con.prepareStatement("select * from colleges where name=?");
					pstmt.setString(1,request.getParameter("clgname"));
					ResultSet rs=pstmt.executeQuery();
					if(rs.next())
					{
						String name=rs.getString(1);
						%>					
						<div class="w3-panel w3-card">
						  <div class="w3-row">
						          <div class="w3-col s4" >
						          		<br><br>
							          <i class='fas fa-map-marker-alt' style='font-size:60px;margin-left:150px;color:blue;'></i>
							          <br><br><h4 style="font-family: Lucida Console, Courier New, monospace;color:green;">Location:<%=rs.getString(2) %></h4>
						          </div>
						          <div class="w3-col s4">
						          			<h2 style="font-family: Times New Roman, Times, serif;color:red;text-decoration:underline;" align="center"><%=rs.getString(1) %></h2>
						          			<div class="w3-panel w3-card inside">
						          			<img src="imagedisplay.jsp?name=<%=name%>" class="w3-round" height="180" width="350">
									        </div>
						          </div>
						          <div class="w3-col s4">
							          <br><br>
							          <i class='fas fa-chalkboard-teacher' style='font-size:60px;margin-left:150px;color:blue;'></i>
							          <br><br><h4 style="font-family: Lucida Console, Courier New, monospace;color:green;">&nbsp;Director:<%=rs.getString(4)%></h4>
						          </div>
						          
						</div>
						<%
					}
					else{
						out.println("no records");
					}
				}
				
				
				
	}
	catch(Exception e)
	{
		out.println(e);
	}
	
}
else{
	out.println("session Expired");
}
%>