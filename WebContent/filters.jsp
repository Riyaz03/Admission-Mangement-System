
<%@ page import="java.sql.*" %>


<!-- <h3>Ok</h3> -->


<!DOCTYPE html>
<html>
<head>
  
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<title>College Sketch</title>
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
    margin-left: 17px;
    height: 400px;
    width: 310px;
}
.lnt{
margin-left: 50px;
      height: 200px;
      width: 1300px;
}


     
		.marg{
			margin-left:820px;
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
  
  

<%
//out.println(request.getParameter("r"));
int rank=Integer.parseInt(request.getParameter("r"));
if(rank==-5)
{
	%>
	<div class="dropdown">
    <button class="dropbtn" style="font-size: large;margin-top: 7px;">Spec
      <i class="fa fa-caret-down"></i>
    </button>
    
     <div class="dropdown-content">
      <a href="filters.jsp?r=<%=-5%>&b=<%="CSE"%>">CSE</a>
      <a href="filters.jsp?r=<%=-5%>&b=<%="ECE"%>">ECE</a>
      <a href="filters.jsp?r=<%=-5%>&b=<%="EEE"%>">EEE</a>
      <a href="filters.jsp?r=<%=-5%>&b=<%="IT"%>">IT</a>
      <a href="filters.jsp?r=<%=-5%>&b=<%="ME"%>">ME</a>
      <a href="filters.jsp?r=<%=-5%>&b=<%="BT"%>">BT</a>
    </div> 
  </div> 
   <div class="dropdown" style="margin-left: 700px;">
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
	
	<% 
	try{
		Connection con=null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","epproject","epproject");
		
		PreparedStatement pstmt=con.prepareStatement("select * from internships where specialization=?");
		pstmt.setString(1,request.getParameter("b"));
		ResultSet rs=pstmt.executeQuery();
		
		while(rs.next())
		{
			%>
			<div class="w3-row">
			<% 
			//out.println(rs.getString(1)+rs.getString(2)+rs.getString(3));
			%>
				
		          <div class="w3-col s3">
		            <div class="w3-panel w3-card lnt">
		            <br>
		                <!-- <div class="exam exam1"></div> -->
		                <div class="w3-row">
		                	<div class="w3-col s4"><img src="homes.jpg" class="w3-round" height="150" width="280"></div>
		                	<div class="w3-col s4"><label style="font-weight:bold;">Company Name:</label><h4><%=rs.getString(1) %></h4>				                
		                 <label style="font-weight:bold;">Location:</label><h6 ><%=rs.getString(2) %></h6>
		                 </div>
		                 <div class="w3-col s4">
		                 <label style="font-weight:bold;">Skills Required:</label><h6 ><%=rs.getString(3) %></h6>
		                 <label style="font-weight:bold;">Type:</label><h6 ><%=rs.getString(4) %></h6>
		                 <button><a href="https://www.kluniversity.in/" style="text-decoration: none; color: black;">Know More</a></button>  
		                 
		                 </div>
		            	
		                </div>
		                
		                		                 
		                 
		            </div>
		 		</div>
		
			<%
		}
	}
	catch(Exception e)
	{
		out.println(e);
	}	
}
else if(rank==-1)
{
	%>
	<div class="dropdown">
    <button class="dropbtn" style="font-size: large;margin-top: 7px;">Branch
      <i class="fa fa-caret-down"></i>
    </button>
    
     <div class="dropdown-content">
      <a href="filters.jsp?r=<%=-1%>&b=<%="MPC"%>">MPC</a>
      <a href="filters.jsp?r=<%=-1%>&b=<%="BIPC"%>">BIPC</a>
      <a href="filters.jsp?r=<%=-1%>&b=<%="CEC"%>">CEC</a>
      <a href="filters.jsp?r=<%=-1%>&b=<%="MEC"%>">MEC</a>
      <a href="filters.jsp?r=<%=-1%>&b=<%="HEC"%>">HEC</a>
    </div> 
  </div> 
  </div>
	
	<% 
	try{
		Connection con=null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","epproject","epproject");
		
		PreparedStatement pstmt=con.prepareStatement("select * from colleges where branch=?");
		pstmt.setString(1,request.getParameter("b"));
		ResultSet rst=pstmt.executeQuery();
		%>
		<div class="w3-row">
		<% 
		while(rst.next())
		{
			%>
			
	        <div class="w3-col s3">
	          <div class="w3-panel w3-card">
	          <br>
	              <!-- <div class="exam exam1"></div> -->
	              <img src="homes.jpg" class="w3-round" height="200" width="280">
	              <center>
	               <h4 style="text-decoration:underline;font-weight:bold;"><%=rst.getString(1) %></h4>
	               Location:<h6 ><%=rst.getString(2) %></h6>
	            <button><a href="knowmore.jsp?ts=<%=2%>&clgname=<%=rst.getString(1) %>" style="text-decoration: none; color: black;">Know More</a></button>  
	          	</center>
	          </div>
			</div>

		<%
		}
	}
	catch(Exception e)
	{
		out.println(e);
	}	
}
else if(rank>100)
{
	%>
	<div class="dropdown">
    <button class="dropbtn" style="font-size: large;margin-top: 7px;">Eamcet Rank 
      <i class="fa fa-caret-down"></i>
    </button>
     <div class="dropdown-content">
      <a href="filters.jsp?r=<%=30000%>">lessthan 30,000</a>
      <a href="filters.jsp?r=<%=50000%>">lessthan 50,000</a>
      <a href="filters.jsp?r=<%=80000%>">lessthan 80,000</a>
      <a href="filters.jsp?r=<%=120000%>">lessthan 1,20,000</a>
      <a href="filters.jsp?r=<%=130000%>">greater than 1,20,000</a>
    </div> 
  </div> 
  <div class="dropdown">
    <button class="dropbtn" style="font-size: large;margin-top: 7px;">JeeMains Rank
      <i class="fa fa-caret-down"></i>
    </button>
     <div class="dropdown-content">
      <a href="filters.jsp?r=<%=65%>">lessthan 65</a>
      <a href="filters.jsp?r=<%=75%>">lessthan 75</a>
      <a href="filters.jsp?r=<%=85%>">lessthan 85</a>
      <a href="filters.jsp?r=<%=95%>">lessthan 95</a>
      <a href="filters.jsp?r=<%=96%>">greater than 95</a>
    </div> 
  </div> 
  
  
  <div class="dropdown" style="margin-left: 470px;">
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
	<%
	try{
		Connection con=null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","epproject","epproject");
		
		PreparedStatement pstmt=con.prepareStatement("select * from universities where min_eamcet<=?");
		pstmt.setInt(1,rank);
		ResultSet rst=pstmt.executeQuery();
		%>
		<div class="w3-row">
		<% 
		while(rst.next())
		{
			%>
			
	        <div class="w3-col s3">
	          <div class="w3-panel w3-card">
	          <br>
	              <!-- <div class="exam exam1"></div> -->
	              <img src="homes.jpg" class="w3-round" height="200" width="280">
	              <center>
	               <h4 style="text-decoration:underline;font-weight:bold;"><%=rst.getString(1) %></h4>
	               Location:<h6 ><%=rst.getString(2) %></h6>
	            <button><a href="knowmore.jsp?ts=<%=1%>&clgname=<%=rst.getString(1) %>" style="text-decoration: none; color: black;">Know More</a></button>  
	          	</center>
	          </div>
			</div>

		<%
		}
	}
	catch(Exception e)
	{
		out.println(e);
	}	
}
else{
	//out.println(request.getParameter("r"));
	%>
	<div class="dropdown">
    <button class="dropbtn" style="font-size: large;margin-top: 7px;">Eamcet Rank 
      <i class="fa fa-caret-down"></i>
    </button>
     <div class="dropdown-content">
      <a href="filters.jsp?r=<%=30000%>">lessthan 30,000</a>
      <a href="filters.jsp?r=<%=50000%>">lessthan 50,000</a>
      <a href="filters.jsp?r=<%=80000%>">lessthan 80,000</a>
      <a href="filters.jsp?r=<%=120000%>">lessthan 1,20,000</a>
      <a href="filters.jsp?r=<%=130000%>">greater than 1,20,000</a>
    </div> 
  </div> 
  <div class="dropdown">
    <button class="dropbtn" style="font-size: large;margin-top: 7px;">JeeMains Rank
      <i class="fa fa-caret-down"></i>
    </button>
     <div class="dropdown-content">
      <a href="filters.jsp?r=<%=65%>">lessthan 65</a>
      <a href="filters.jsp?r=<%=75%>">lessthan 75</a>
      <a href="filters.jsp?r=<%=85%>">lessthan 85</a>
      <a href="filters.jsp?r=<%=95%>">lessthan 95</a>
      <a href="filters.jsp?r=<%=96%>">greater than 95</a>
    </div> 
  </div> 
  
  
  <div class="dropdown" style="margin-left: 470px;">
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
	<%
	try{
		Connection con=null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","epproject","epproject");
		
		PreparedStatement pstmt=con.prepareStatement("select * from universities where min_main<=?");
		pstmt.setInt(1,rank);
		ResultSet rst=pstmt.executeQuery();
		%>
		<div class="w3-row">
		<% 
		while(rst.next())
		{
			%>
			
	        <div class="w3-col s3">
	          <div class="w3-panel w3-card">
	          <br>
	              <!-- <div class="exam exam1"></div> -->
	              <img src="homes.jpg" class="w3-round" height="200" width="280">
	              <center>
	               <h4 style="text-decoration:underline;font-weight:bold;"><%=rst.getString(1) %></h4>
	               Location:<h6 ><%=rst.getString(2) %></h6>
	            <button><a href="https://www.kluniversity.in/" style="text-decoration: none; color: black;">Know More</a></button>  
	          	</center>
	          </div>
			</div>

		<%
		}
	}
	catch(Exception e)
	{
		out.println(e);
	}
}

%>

</div>
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
