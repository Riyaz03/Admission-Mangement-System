<%@ page import="java.sql.*" %>
<!doctype html>
<html lang="en">
  <head>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  
    <title>Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  </head>
  <style>
  	.marg{
  	margin-left: 900px;
  	}
  	img {
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 5px;
  height:300px;
  width: 500px;
}
.w3-card{
	height:350px;
	width:300px;
}
  </style>
  <body>
  
	  <nav class="navbar navbar-expand-lg navbar-light bg-primary">
    <div class="container-fluid">
      <!-- <img src="adminlogo.png" alt="" width="50" height="54" class="d-inline-block align-top"> -->
      &nbsp;&nbsp;<a class="navbar-brand" href="home.html"><h4 style="font-style:italic; color: white;">CollegeSketch</h4></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          &nbsp;&nbsp;
          <li class="nav-item">
            <a class="nav-link" href="newabout.html" style="color: white;">AboutUs</a>
          </li>
          &nbsp;
          <li class="nav-item">
            <div class="btn-group marg">
          <button type="button" class="btn btn-info">Menu</button>
          <button type="button" class="btn btn-info dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="sr-only">Toggle Dropdown</span>
          </button>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="viewprofile.jsp">View Profile</a>
            <a class="dropdown-item" href="forgotpage.jsp">Change Password</a>
            <a class="dropdown-item" href="newabout.html">Contact Us</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="logout.jsp">Logout</a>
          </div>
        </div>
          </li>
        </ul>
        
                </div>
    </div>
  </nav>
<%
Connection con=null;
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","epproject","epproject");

PreparedStatement pstmt=con.prepareStatement("update institutions set name=?,location=?,type=?,min_eamcet=?,min_mains=? where name=?");
pstmt.setString(1,request.getParameter("clgname"));
pstmt.setString(2,request.getParameter("clgloc"));
pstmt.setString(3,request.getParameter("clgtype"));
pstmt.setString(4,request.getParameter("fn"));
pstmt.setString(5,request.getParameter("mineamcet"));
pstmt.setString(6,request.getParameter("minmains"));
pstmt.executeUpdate();
%>  
<h3>Institution Updated Successfully</h3>
<jsp:forward page="adminhome.jsp"></jsp:forward>
 
  
