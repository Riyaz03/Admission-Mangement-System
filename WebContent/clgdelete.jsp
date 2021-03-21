<%@ page import="java.sql.*"%>

<%
Connection con=null;
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","epproject","epproject");

PreparedStatement pstmt=con.prepareStatement("delete from institutions where name=?");
pstmt.setString(1,request.getParameter("clgname"));
pstmt.execute();
%>
<h3>Institution Deleted Successfully</h3>
<jsp:include page="adminhome.jsp"></jsp:include>