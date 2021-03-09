<%@page import="java.sql.*" %>
<%


String np=request.getParameter("pwds");
String user=(String)session.getAttribute("email");

out.println(user);
if(user!=null)
{
	try{
		Connection con=null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","epproject","epproject");
		
		PreparedStatement pstmt=con.prepareStatement("update users_data set password=? where email=?");
		pstmt.setString(1,np);
		pstmt.setString(2,user);
		pstmt.execute();
		%>
			<h3>Password Saved Successfully</h3>
			<!-- Click Here TO Login <a href="login.html">Login</a> -->
			<jsp:include page="forgotpage.jsp"></jsp:include>
		<%		
	}
	catch(Exception e)	
	{
		System.out.println(e);
	}
}
else
{
	out.println("<h3>Session Expired</h3>");
}

%>