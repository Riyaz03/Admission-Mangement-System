<%
	String one="inst";
String two="users";
String thr="fb";
%>

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
  <br>
<!-- <center>
<img src="finalhomelogo.png">
</center>
<br> -->
<div class="w3-container">
  

  <div class="w3-panel w3-card">
  <div class="row">
  		<div class="col"><h2>Institutions Database</h2> (Insert,Update or Delete Institutions Data)</div>
  		<div class="col"><br><a href="insdata.jsp?t=<%=one %>" type="button" style="margin-left:450px" class="btn btn-primary">Continue</a></div>
  	</div>  
</div>
  
  <div class="w3-panel w3-card">
  <div class="row">
  		<div class="col"><h2>User Database</h2> (View user details)</div>
  		<div class="col"><br><a href="insdata.jsp?t=<%=two %>" style="margin-left:450px" class="btn btn-primary">Continue</a></div>
  	</div>  
</div>
<div class="w3-panel w3-card">
  <div class="row">
  		<div class="col"><h2>FeedBacks Database</h2> (View All FeedBacks)</div>
  		<div class="col"><br><a href="insdata.jsp?t=<%=thr %>" style="margin-left:450px" class="btn btn-primary">Continue</a></div>
  	</div>  
</div>












    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

    
  </body>
</html>