<%@page import="java.sql.*" %>
<%
	String em=(String)session.getAttribute("email");
	String fb=request.getParameter("comments");
	
	if(em!=null)
	{
		try{
			Connection con=null;
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","epproject","epproject");
			
			PreparedStatement pstmt=con.prepareStatement("select * from feedbacks where email=?");
			pstmt.setString(1, em);
			ResultSet rs=pstmt.executeQuery();
			if(rs.next())
			{
				PreparedStatement pstmt1=con.prepareStatement("update feedbacks set feedback=? where email=?");
				pstmt1.setString(1,fb);
				pstmt1.setString(2, em);
				pstmt.executeUpdate();
				%>
					<h3>FeedBack Updated</h3>
					<jsp:include page="feedbacks.jsp"></jsp:include>
				<%
			}
			else{
				PreparedStatement pstmt2=con.prepareStatement("insert into feedbacks values(?,?)");
				pstmt2.setString(1,em);
				pstmt2.setString(2, fb);
				pstmt2.execute();
				%>
				<h3>FeedBack Inserted</h3>
				<jsp:include page="feedbacks.jsp"></jsp:include>
			<%
			}
			
		}
		catch(Exception e)	
		{
			System.out.println(e);
		}
	}
	else{
		%>
			<jsp:include page="home.jsp"></jsp:include>
		<%
	}
%>