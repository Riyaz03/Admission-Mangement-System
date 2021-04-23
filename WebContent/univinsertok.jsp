<%@ page import="java.sql.*" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%
String path1="D:\\epimages\\universities\\";       // you can change this path
String imagepath=request.getParameter("imagepath");
String path=path1+imagepath;
File imagefile=new File(path);
FileInputStream fis=new FileInputStream(imagefile);
	try{
		Connection con=null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","epproject","epproject");
		int p1=Integer.parseInt(request.getParameter("eamcet"));
		int p2=Integer.parseInt(request.getParameter("mains"));
		PreparedStatement pstmt=con.prepareStatement("insert into universities values(?,?,?,?,?,?)");
		pstmt.setString(1,request.getParameter("clgname"));
		pstmt.setString(2,request.getParameter("clgloc"));
		pstmt.setInt(3,p1);
		pstmt.setInt(4,p2);
		pstmt.setString(5,request.getParameter("clgdir"));
		pstmt.setBinaryStream(6, (InputStream)fis, (int)(imagefile.length()));
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