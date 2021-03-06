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
	height:570px;
	width:400px;
}
  </style>
  <body>
  
	  <nav class="navbar navbar-expand-lg navbar-light bg-primary">
    <div class="container-fluid">
      <!-- <img src="adminlogo.png" alt="" width="50" height="54" class="d-inline-block align-top"> -->
      &nbsp;&nbsp;<a class="navbar-brand" href="adminhome.jsp"><h4 style="font-style:italic; color: white;">CollegeSketch</h4></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          &nbsp;&nbsp;
          <li class="nav-item">
            <a class="nav-link" href="adminhome.jsp" style="color: white;">Home</a>
          </li>
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
  
  <br><br><br>
<%
String it_now=request.getParameter("outer");
//out.println(request.getParameter("outer")+",");

//--Insert
if(it_now.equals("1"))
{
	%>
	<center>
	<div class="w3-panel w3-card">
	<h3 style="text-decoration:underline;">Enter Details</h3>
  		<form method="post" action="clginsertok.jsp">
			<label style="font-size: large;">Institution Name:</label><input type="text" class="form-control" placeholder="Enter Institution Name" name="clgname" required>
             <label style="font-size: large;">Institution Location:</label><input type="text" class="form-control" placeholder="Enter Institution Name" name="clgloc" required>
             <label style="font-size: large;">Branch:</label><input type="text" class="form-control" placeholder="Enter Branch" name="clgbr" required>
             <label style="font-size: large;">Director Name:</label><input type="text" class="form-control" placeholder="Enter Director Name" name="clgdir" required>
             <!-- <label style="font-size: large;">Type:</label><br>
             <select class="form-select form-select-sm" aria-label=".form-select-sm example" name="clgtype">
				  <option selected>select</option>
				  <option value="university">University</option>
				  <option value="college">College</option>
			 </select> -->
			 <label style="font-size: large;">College Image:</label>
			 <input type="file" name="imagepath">
			 <br><br>
			 <button type="submit" class="btn btn-primary">Insert Data</button>			
		</form>
	</div>
	</center>
	<%
}
//--delete clg
else if(it_now.equals("2"))
{
	%>
	<center>
	<div class="w3-panel w3-card">
	<br><br><br>
	<h3 style="text-decoration:underline;">Enter Details</h3>
  		<form method="post" action="clgdelete.jsp">
			<label style="font-size: large;">Institution Name:</label><input type="text" class="form-control" placeholder="Enter Institution Name" name="clgname" required>
			 <br>
			 <button type="submit" class="btn btn-primary">Continue</button>			
		</form>
	</div>
	</center>
	<% 
	
	
}
//-- view clg 
else if(it_now.equals("3"))
{
	Connection con=null;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","epproject","epproject");

	PreparedStatement pstmt=con.prepareStatement("select * from colleges");
	ResultSet rs=pstmt.executeQuery();
	out.println("<table border=2 align='center'><tr><th>Institution Name</th><th>Instituation Location</th><th>Branch</th><th>Director Name</th><th>Image</th></tr>");
	while(rs.next()){
		String name=rs.getString(1);
		out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td>");
		%>
		<img src="imagedisplay.jsp?name=<%=name%>">
		<%
		out.println("</tr>");
	}
	out.println("</table>");
}
//--update clg
else if(it_now.equals("4"))
{
	%>
	<center>
	<div class="w3-panel w3-card">
	<br><br><br>
	<h3 style="text-decoration:underline;">Enter Details</h3>
  		<form method="post" action="clgedit.jsp">
			<label style="font-size: large;">Institution Name:</label><input type="text" class="form-control" placeholder="Enter Institution Name" name="clgname" required>
			 <br>
			 <button type="submit" class="btn btn-primary">Continue</button>			
		</form>
	</div>
	</center>
	<% 
	
}
//--view user records
else if(it_now.equals("5")){
	Connection con=null;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","epproject","epproject");

	PreparedStatement pstmt=con.prepareStatement("select * from users_data");
	ResultSet rs=pstmt.executeQuery();
	out.println("<table border=2 align='center'><tr><th>First Name</th><th>Last Name</th><th>Email</th></tr>");
	while(rs.next()){
		out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td></tr>");
	}
	out.println("</table>");
}
//--view feedbacks
else if(it_now.equals("6")){
	Connection con=null;
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","epproject","epproject");

	PreparedStatement pstmt=con.prepareStatement("select * from feedbacks");
	ResultSet rs=pstmt.executeQuery();
	out.println("<table border=2 align='center'><tr><th>Email</th><th>Feedback</th></tr>");
	while(rs.next()){
		out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td></tr>");
	}
	out.println("</table>");
	
}
//Univesities
//--Insert
else if(it_now.equals("7")){
	//out.println(it_now);
	%>
	<center>
	<div class="w3-panel w3-card">
	<h3 style="text-decoration:underline;">Enter Details</h3>
  		<form method="post" action="univinsertok.jsp">
			<label style="font-size: large;">University Name:</label><input type="text" class="form-control" placeholder="Enter Institution Name" name="clgname" required>
             <label style="font-size: large;">University Location:</label><input type="text" class="form-control" placeholder="Enter Institution Name" name="clgloc" required>
             <label style="font-size: large;">Director Name:</label><input type="text" class="form-control" placeholder="Enter Director Name" name="clgdir" required>
             <label style="font-size: large;">Minimum Eamcet Rank Required:</label><input type="text" class="form-control" placeholder="Enter Mininmum Rank" name="eamcet" required>
             <label style="font-size: large;">Minimum JeeMains Percetage Required:</label><input type="text" class="form-control" placeholder="Enter Minimum Percentage" name="mains" required>
             <!-- <label style="font-size: large;">Type:</label><br>
             <select class="form-select form-select-sm" aria-label=".form-select-sm example" name="clgtype">
				  <option selected>select</option>
				  <option value="university">University</option>
				  <option value="college">College</option>
			 </select> -->
			 <label style="font-size: large;">University Image:</label>
			 <input type="file" name="imagepath">
			 <br><br>
			 <button type="submit" class="btn btn-primary">Insert Data</button>			
		</form>
	</div>
	</center>
	<%
}
//--Delete
else if(it_now.equals("8")){
	out.println(it_now);
}
//--View
else if(it_now.equals("9")){
	out.println(it_now);
}
//--Update
else if(it_now.equals("10")){
	out.println(it_now);
}
//Internships....

//--Insert
else if(it_now.equals("11")){
	//out.println(it_now);
	%>
	<center>
	<div class="w3-panel w3-card">
	<h3 style="text-decoration:underline;">Enter Details</h3>
  		<form method="post" action="interninsertok.jsp">
			<label style="font-size: large;">Company Name:</label><input type="text" class="form-control" placeholder="Enter Company Name" name="cname" required>
             <label style="font-size: large;">Location:</label><input type="text" class="form-control" placeholder="Enter Location" name="cloc" required>
             <label style="font-size: large;">Skills Required:</label><input type="text" class="form-control" placeholder="Enter Skills" name="skills" required>
            <label style="font-size: large;">Type:</label><br>
             <select class="form-select form-select-sm" aria-label=".form-select-sm example" name="itype">
				  <option selected>select</option>
				  <option value="part-time">Part-Time</option>
				  <option value="full-time">Full-Time</option>
			 </select>
			              <label style="font-size: large;">Duration:</label><input type="text" class="form-control" placeholder="Enter Duration" name="duration" required>
			 
            <label style="font-size: large;">Specilization:</label><input type="text" class="form-control" placeholder="Enter Specialization" name="spec" required>
             
			 <label style="font-size: large;">Image:</label>
			 <input type="file" name="imagepath">
			 <br><br>
			 <button type="submit" class="btn btn-primary">Insert Data</button>			
		</form>
	</div>
	</center>
	<%
}
//--Delete
else if(it_now.equals("12")){
	out.println(it_now);
}
//--View
else if(it_now.equals("13")){
	out.println(it_now);
}
//--Update
else if(it_now.equals("14")){
	out.println(it_now);
}
%>