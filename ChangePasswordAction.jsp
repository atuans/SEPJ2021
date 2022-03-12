<%@page import="java.sql.Statement"%>
<%@page import="DB.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%

String userEmail = session.getAttribute("userEmail").toString();
String oldPassword = request.getParameter("oldPassword");
String newPassword = request.getParameter("newPassword");
String confirmPassword = request.getParameter("confirmPassword");

if(!confirmPassword.equals(newPassword)){
	response.sendRedirect("ChangePassword.jsp?message=notmatch");
	
}
else{
	
	int check =0;
	try {
		
		Connection connection = DBConnection.CreaterConnection();
		Statement st =connection.createStatement();
		ResultSet rs = st.executeQuery("select * from user where userEmail='"+userEmail+"' and userPassword='"+oldPassword+"'");
		while(rs.next()){
			
			check =1;
			st.executeUpdate("update Member set userPassword='"+newPassword+"' where userEmail='"+userEmail+"'");
			response.sendRedirect("ForgetPassword.jsp?message=done");
			
		}
		if(check==0){
			response.sendRedirect("ForgetPassword.jsp?message=wrong");

		}
		
	}
	catch(Exception e){
		System.out.println(e);
	}
	
}


%>