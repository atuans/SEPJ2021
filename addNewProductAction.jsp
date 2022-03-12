<%@page import="DB.DBConnection" %>
<%@page import="java.sql.*" %>
<%




String productTitle = request.getParameter("productTitle");
String productDescription = request.getParameter("productDescription");
String productPrice = request.getParameter("productPrice");
String productQuantity = request.getParameter("productQuantity");
String productFor = request.getParameter("productFor");
String productPhoto = request.getParameter("productPhoto");


try {
	Connection connection = DBConnection.CreaterConnection();
	PreparedStatement ps = connection.prepareStatement("insert into product values(?,?,?,?,?,?)");
	ps.setString(2, productTitle);
	ps.setString(3, productDescription);
	ps.setString(4, productPhoto);
	ps.setString(5, productPrice);
	ps.setString(6, productQuantity);
	ps.setString(7, productFor);

	
	ps.executeUpdate();

	response.sendRedirect("addNewProduct.jsp?message=done");
	
	
	
} catch (Exception e) {
	response.sendRedirect("addNewProduct.jsp?message=wrong");

}

%>
