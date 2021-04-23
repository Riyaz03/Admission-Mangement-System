<%@ page import="java.sql.*" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%
	
String path1="D:\\epimages\\interships\\";       // you can change this path
String imagepath=request.getParameter("imagepath");
String path=path1+imagepath;
File imagefile=new File(path);
FileInputStream fis=new FileInputStream(imagefile);
	try{
		Connection con=null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","epproject","epproject");
		
		PreparedStatement pstmt=con.prepareStatement("insert into internships values(?,?,?,?,?,?,?)");
		pstmt.setString(1,request.getParameter("cname"));
		pstmt.setString(2,request.getParameter("cloc"));
		pstmt.setString(3,request.getParameter("skills"));
		pstmt.setString(4,request.getParameter("itype"));
		pstmt.setString(5,request.getParameter("duration"));
		pstmt.setString(6,request.getParameter("spec"));
		pstmt.setBinaryStream(7, (InputStream)fis, (int)(imagefile.length()));
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