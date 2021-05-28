<%@ page import="java.sql.*" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%
	
String path1="D:\\epimages\\colleges\\";       // you can change this path
String imagepath=request.getParameter("imagepath");
String path=path1+imagepath;
File imagefile=new File(path);
FileInputStream fis=new FileInputStream(imagefile);
	try{
		Connection con=null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","epproject","epproject");
		
		PreparedStatement pstmt=con.prepareStatement("insert into colleges(name,location,branch,director,image) values(?,?,?,?,?)");
		pstmt.setString(1,request.getParameter("clgname"));
		pstmt.setString(2,request.getParameter("clgloc"));
		pstmt.setString(3,request.getParameter("clgbr"));
		pstmt.setString(4,request.getParameter("clgdir"));
		pstmt.setBinaryStream(5, (InputStream)fis, (int)(imagefile.length()));
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