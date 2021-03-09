<%@ page import="java.sql.*" %>
<%

%>
<!doctype html>
<html>
  <head>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Admission Management</title>
  </head>
  <style>
      .carousel-item{
          height: 32rem;
          background-color: grey;
      }
      .overlay{
          position: absolute;
          bottom: 0;
          left: 0;
          right: 0;
          top: 0;
          background-position: center;
          background-size: cover;
        
      }
      .d-flex{
        margin-top: 5px;
        height: 30px;
      }

      .cards{ 
        width: 280px;
        height: 350px;
        text-align: center;
        display: inline-block;
        border-radius: 3px;
        padding: 15px 15px;
        box-sizing: border-box;
        cursor: pointer;
        margin: 10px 15px;;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        transition: 0.3s;
      }


      /* On mouse-over, add a deeper shadow */
      .cards:hover {
        box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
      }

      /* Add some padding inside the card container */
      .container {
        padding: 2px 16px;
      }
      
      .column {
        float: left;
        width: 20%;
        padding: 0 10px;
      }

      /* Remove extra left and right margins, due to padding */
      .row {margin: 0 -5px;}
        .exam{
          width: 100%;
          height: 200px;
          
          background-position: center;
          background-size: cover;
        }
        .exam1{
          background-image: url(homes.jpg);
        }
        
		.marg{
			margin-left:820px;
		}
  </style>
  <body>
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
              <a class="nav-link" aria-current="page" href="home.jsp" style="color: white;">Home</a>
            </li>
            &nbsp;&nbsp;
            <li class="nav-item">
              <a class="nav-link" href="newabout.html" style="color: white;">AboutUs</a>
            </li>
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
    <div class="dropdown-divider"></div>
    <a class="dropdown-item" href="logout.jsp">Logout</a>
  </div>
</div>
            </li>
            <!-- <form class="d-flex">
              <select name="Colleg-List">
                <option selected>College List</option>
                <option value="college1">College 1</option>
                <option value="college2">College 2</option>
                <option value="college2">College 3</option>
                <option value="college2">College 4</option>
                <option value="college2">College 5</option>
              </select>
            </form>
          </ul>
          <div style="margin-left: 900px;">
          <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit" style="color: white;">Search</button>
          </form>
        </div> -->
        </div>
      </div>
    </nav>
    <br>
<%
	String ems=(String)session.getAttribute("email");
	if(ems!=null)
	{
		String t=request.getParameter("typese");
		//out.println(t+"<br>");
		try{
			Connection con=null;
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","epproject","epproject");
			
			PreparedStatement pstmt=con.prepareStatement("select * from institutions where type=?");
			pstmt.setString(1, t);
			ResultSet rs=pstmt.executeQuery();
			%>
			<div class="row">
			<% 
			while(rs.next())
			{
				//out.println(rs.getString(1)+rs.getString(2)+rs.getString(3));
				%>
					
			          <div class="column">
			            <div class="cards">
			                <div class="exam exam1"></div>
			                 <h4><%=rs.getString(1) %></h4>
			                 Location:<h6><%=rs.getString(2) %></h6>
			              <button class="btn btn-primary"><a href="https://www.kluniversity.in/" style="text-decoration: none; color: white;">Know More</a></button>  
			            </div>
			 		</div>
			 		&nbsp;&nbsp;&nbsp;
				<%
			}
			%>
			 
        	</div>
        
        

     
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

			<%
		}
		catch(Exception e)
		{
			
		}
		
	}
	else{
		out.println("session Expired");
	}

%>