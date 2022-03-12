<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DB.DBConnection"%>


<%

String userName = request.getParameter("userName");
String userEmail = request.getParameter("userEmail");
String title = request.getParameter("title");
String content = request.getParameter("content");




try{
	Connection connection = DBConnection.CreaterConnection();
	PreparedStatement preparedStatement = connection.prepareStatement("insert into Message(userName,userEmail,title,content) value =(?,?,?,?)");
	preparedStatement.setString(1, userName);
	preparedStatement.setString(2, userEmail);
	preparedStatement.setString(3, title);
	preparedStatement.setString(4, content);


	preparedStatement.executeUpdate();
	
	response.sendRedirect("contact-us.jsp?message=valid");
	
}
catch(Exception e){
	
	System.out.print(e);
	response.sendRedirect("contact-us.jsp?message=valid");

}

%>