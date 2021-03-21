<%@page import="java.sql.*" %>
<%
	String u=request.getParameter("uname");
	String p=request.getParameter("paswd");
	
	
	try{
		Connection con=null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","epproject","epproject");
		
		PreparedStatement pstmt=con.prepareStatement("select * from users_data where email=?");
		pstmt.setString(1, u);
		ResultSet rs=pstmt.executeQuery();
		
		
		if(rs.next()){
			if(p.equals(rs.getString(4))){
				
				session.setAttribute("email",u);
				String f=rs.getString(1);
				String l=rs.getString(2);
				session.setAttribute("firstname",f);
				session.setAttribute("lastname",l);
				String ok="admin";
				if(ok.equals(rs.getString(6)))
				{
					response.sendRedirect("adminhome.jsp");
				}
				else{
					response.sendRedirect("home.jsp");
				}
				
			}
			else{
				%>
			 	<h3>Password That You Entered Is InCorrect</h3>
			 	<a href="forgotpage.jsp?uname=<%=u %>">Forgot Password?</a>
			 	
				<%
			}
		}
		else
		{
			%>
			 	<h3>Account Not Found!!</h3>
			 	<a href="IN_SignUp.html">Register</a>
			<%
			
		
		}
	}
	catch(Exception e)	
	{
		System.out.println(e);
	}
%>