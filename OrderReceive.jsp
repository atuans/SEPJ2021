<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DB.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/ordersReceived-style.css">

<meta charset="UTF-8">
<title>Order Receive</title>

<style type="text/css">

.th-style
{ width: 25%;}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Orders Received <i class="fas fa-archive"></i></div>

<%
String message = request.getParameter("message");
if("cancel".equals(message))
{%>
	<h3>Order Cancel Success</h3>
<% }%>
<%
if("delivered".equals(message))
{%>
	<h3>Already Delivered</h3>
<% }%>

<%
if("invalid".equals(message))
{%>
	<h3>Something wrong, try again</h3>
<% }%>


	<table id="customers">
          <tr>
          <th>Mobile Number</th>
            <th scope="col">Product Name</th>
            <th scope="col">Quantity</th>
            <th scope="col"><i class="fa fa-inr"></i> Sub Total</th>
            <th>Address</th>
            <th>City</th>
            <th>State</th>
            <th>Country</th>
            <th scope="col">Order Date</th>
             <th scope="col">Expected Delivery Date</th>
             <th scope="col">Payment Method</th>
              <th scope="col">T-ID</th>
              <th scope="col">Status</th>
              <th scope="col">Cancel order <i class='fas fa-window-close'></i></th>
              <th scope="col">Order Delivered <i class='fas fa-dolly'></i></i></th>
          </tr>
        
       <%
       
       		try{
			Connection connection = DBConnection.CreaterConnection();
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery("select * from Cart inner join Product where Cart.product_id = Product.id and Cart.orderDate is not NULL");
			while(rs.next())
			{
				
       
       %>
       
       
          <tr>
          <td><%=rs.getString(10) %></td>
            <td><%=rs.getString(17) %></td>
            <td></td>
            <td><i class="fa fa-inr"></i>  </td>
                <td></td>
               <td></td>
                <td></td>
                 <td></td>
             <td></td>
              <td></td>
               <td></td>
               <td></td>
               <td></td>
               <td><a href="">Cancel <i class='fas fa-window-close'></i></a></td>
                <td><a href="">Delivered <i class='fas fa-dolly'></i></i></a></td>
            </tr>
         
		<%} 
			
			}
			catch(Exception e){
				System.out.print(e);
			}
         
         %>
        </table>
      <br>
      <br>
      <br>
</body>
</html>