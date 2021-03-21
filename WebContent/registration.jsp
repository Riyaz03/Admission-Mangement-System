<%@ page import="java.sql.*" %>
<% 
String fname=request.getParameter("firstname");
String lname=request.getParameter("lastname");
String email=request.getParameter("emails");
String pwd=request.getParameter("passwords");
String cb=request.getParameter("checkboxs");
String gr=request.getParameter("grd");

	try{
		Connection con=null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","epproject","epproject");
		
		
		PreparedStatement pstmt=con.prepareStatement("insert into users_data values(?,?,?,?,?,?,?)");
		pstmt.setString(1, fname);
		pstmt.setString(2, lname);
		pstmt.setString(3, email);
		pstmt.setString(4, pwd);
		pstmt.setString(5,cb);
		pstmt.setString(6,"user");
		pstmt.setString(7,gr);
		pstmt.execute();
		
		
	}
	catch(Exception e)
	{
		out.println(e);
	}


%>

<h3><%=fname %> <%=lname %>, Account Created</h3>
<h2><a href="login.html">Login</a></h2>
<jsp:include page="signup.html"></jsp:include>