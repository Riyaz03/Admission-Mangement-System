<%@page import="java.sql.*"%>

<%@ page import="java.io.*,java.util.*" %>
<% 
Blob image = null;
Connection con = null;
byte[ ] imgData = null ;
Statement stmt = null;
ResultSet rs=null;
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","epproject","epproject");
String name=request.getParameter("name");
try 
{
//con=dbconn.getconn();

		stmt = con.createStatement();
		rs = stmt.executeQuery("select image from colleges where name='"+name+"' ");
		if (rs.next()) 
		{
		image = rs.getBlob(1);
		imgData = image.getBytes(1,(int)image.length());
		} 
		else 
		{
		out.println("Display Blob Example");
		out.println("image not found for given ID");
		return;
		}
		response.setContentType("image/jpg");
		OutputStream o = response.getOutputStream();
		o.write(imgData);
		o.flush();
		o.close();
} 
catch (Exception e) 
{
		out.println("Unable To Display image");
		out.println("Image Display Error=" + e.getMessage());
		return;
} 
finally 
{
	try 
	{
	rs.close();
	stmt.close();
	con.close();
	} 
	catch (SQLException e) 
	{
		e.printStackTrace();
	}
}
%> 