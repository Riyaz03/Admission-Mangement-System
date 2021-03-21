<%@ page import="java.sql.*" %>
<%
	

	try{
		Connection con=null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","epproject","epproject");
		
		PreparedStatement pstmt=con.prepareStatement("insert into institutions values(?,?,?,?)");
		pstmt.setString(1,request.getParameter("clgname"));
		pstmt.setString(2,request.getParameter("clgloc"));
		pstmt.setString(3,request.getParameter("clgtype"));
		pstmt.setString(4,"exam1");
		pstmt.execute();
		
			out.println("Data Inserted Successfully");
			%>
			<jsp:include page="adminhome.jsp"></jsp:include>
			<%
		
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>