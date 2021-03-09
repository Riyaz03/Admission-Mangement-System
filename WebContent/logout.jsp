<%
String em=(String)session.getAttribute("email");
if(em!=null)
{
		session.invalidate();
		
		%>
		<h3>Logged Out Successfully</h3>
		<jsp:include page="login.html"></jsp:include>
		<%
}
else{
	out.println("Session Expired");
}

%>