<%
	String em=(String)session.getAttribute("email");
	String clg="college";
	String sch="university";
	//String nm=(String)s1.getAttribute("email");
	//out.println(nm);
	if(em!=null)
	{
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
  
    <title>HomePage</title>
  </head>
  <style>
  	.marg{
  		margin-left:870px;
  	}
  </style>
  <body>

<div id="homediv">
    <nav class="navbar navbar-expand-lg navbar-light bg-dark">
      <div class="container-fluid">
        <img src="logo.png" alt="" width="50" height="54" class="d-inline-block align-top">
        &nbsp;&nbsp;<a class="navbar-brand" href="home.jsp"><h4 style="font-style:italic; color: white;">CollegeSketch</h4></a>
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
  <button type="button" class="btn btn-primary">Menu</button>
  <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span class="sr-only">Toggle Dropdown</span>
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="viewprofile.jsp">View Profile</a>
    <a class="dropdown-item" href="forgotpage.jsp">Change Password</a>
    <a class="dropdown-item" href="newabout.html">Contact Us</a>
    <a class="dropdown-item" href="feedbacks.jsp">FeedBack</a>
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="logout.jsp">Logout</a>
  </div>
</div>
            </li>
          </ul>
          
                  </div>
      </div>
    </nav>


    <div style="background-color:rgba(0, 255, 34, 0.795)" >
      <marquee width="100%" direction="left" height="30px">
        <span class="badge rounded-pill bg-info text-dark">Quick</span>&nbsp; Make Your Dreams Come True!..Create Account And Start Exploring--><a href="signup.html">SignUp</a>
      </marquee>
    </div>



    <!--O----0-->
    
    <div class="row featurette">
      <div class="col-md-7" style="background-color:aqua"><br><br>
          <h1 class="featurette-heading">Pursuing B.Tech!</h1>
          <p class="lead">Join In Internships by availing Internship Offers From Our Website...</p>
          <div class="mx-auto" style="width: 0px;">
            <a href="mainpage.jsp?typese=<%=sch %>" class="btn btn-info" role="button">Explore></a>
          </div>
      </div>
      <div class="col-md-5"><img src="ho3.jpg" height="250" width="600"></div>
  </div>

    <hr class="featurette-divisor">

    <div class="fluid-container">
        <div class="row">
            <div class="col-md-5"><img src="ho2.jpg" height="250" width="600"></div>
            <div class="col-md-7" style="background-color:aqua"><br><br><h1>Completed Intermediate!</h1>
                <p class="lead">Explore Our Website To get Admission In Your Dream University...</p>
                
                <a href="mainpage.jsp?typese=<%=sch%>" class="btn btn-info" role="button">Explore></a>
              
                
        </div>

    </div>

    <hr class="featurette-divisor"> 

    

    <div class="row featurette">
      <div class="col-md-7" style="background-color:aqua">
        <br><br>
          <h1 class="featurette-heading">Completed X standard!</h1>
         
          <p class="lead">Explore Our Website For Colleges To Complete Intermediate...</p>
          <div class="mx-auto" style="width: 0px;">
            <a href="mainpage.jsp?typese=<%=clg%>" class="btn btn-info" role="button">Explore></a><br>
          </div>
      </div>
      <div class="col-md-5"><img src="ho1.jpg" height="250" width="600"></div>
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
		
		
		<%
	}
	else
	{
		%>
		<jsp:include page="home.html"></jsp:include>
		<%
			
	}
	
%>