<%@page import="DB.DBConnection" %>
<%@page import="java.sql.*" %>
<%@ page import ="BEAN.*"%>
    <%@ page import ="DAO.*"%>
    <%@ page import ="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Product Page </title>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="css/fontawesome.min.css" />
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/templatemo-style.css">
    <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
  </head>

  <body id="reportsPage">
  <%
   String message = request.getParameter("message");
   if("done".equals(message))
   {%>
	   <div class="alert alert-success alert-dismissible fade show" role="alert">
	  <strong>Update Successful</strong> 
	  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
	    <span aria-hidden="true">&times;</span>
	  </button>
	</div>
   <% }%>
   <%
   if("wrong".equals(message))
   {%>
   
	   <div class="alert alert-danger alert-dismissible fade show" role="alert">
	  <strong>Update Failed</strong> 
	  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
	    <span aria-hidden="true">&times;</span>
	  </button>
	  </div>
   <% }%>
    <nav class="navbar navbar-expand-xl">
      <div class="container h-100">
        <a class="navbar-brand" href="index.html">
          <h1 class="tm-site-title mb-0">Product Storage</h1>
        </a>
        <button
          class="navbar-toggler ml-auto mr-0"
          type="button"
          data-toggle="collapse"
          data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <i class="fas fa-bars tm-nav-icon"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mx-auto h-100">
           
            
            <li class="nav-item">
              <a class="nav-link active" href="products.jsp">
                <i class="fas fa-shopping-cart"></i> Products
              </a>
            
           
          </ul>
                  
        
          
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link d-block" href="adminHome.jsp">
                 <b>Back</b>
              </a>
            </li>
              <li class="nav-item">
              <a class="nav-link d-block" href="../index.html">
                <i class="fas fa-home"></i> Home
              </a>
            </li>
            
          </ul>
        </div>
      </div>
    </nav>
    <div class="container mt-5">
      <div class="row tm-content-row">
        <div class="col-sm-20 col-md-20 col-lg-20 col-xl-20 tm-block-col">
          <div class="tm-bg-primary-dark tm-block tm-block-products">
            <div class="tm-product-table-container">
              <table class="table table-hover tm-table-small tm-product-table">
                <thead>
                  <tr>
                    <th scope="col">&nbsp;</th>
                    <th scope="col"> NAME</th>
                    <th scope="col">PRICE</th>
                    <th scope="col">Description</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Edit</th>
                    <th scope="col">&nbsp;</th>
                  </tr>
                </thead>
                <tbody>
                  <%
            	try{
            		Connection connection = DBConnection.CreaterConnection();
            		Statement st = connection.createStatement();
            		ResultSet rs = st.executeQuery("select * from Product");
            		
            		while(rs.next())
            		{
      
	       	    %>
                  <tr>
                    <th scope="row"><input type="checkbox" /></th>
                    <td class="tm-product-name"><%=rs.getString(2) %></td>
                    <td><%=rs.getString(5) %></td>
                    <td><%=rs.getString(3) %></td>
                    <td><%=rs.getString(7) %></td>
                    
                    <td>
                      <a href="edit-product.jsp?productId=<%=rs.getString(1)%>" class="tm-product-delete-link">
                        <i class="fas fa-edit"></i>
                      </a>
                    </td>
                  </tr>
     			
     				<% 
            		}
            	}
     				catch(Exception e){
     					System.out.println(e);     					
     				}%>
       
             
                </tbody>
              </table>
            </div>
            <!-- table container -->

            
            <a
              href="addNewProduct.jsp"
              class="btn btn-primary btn-block text-uppercase mb-3">Add new product</a>
               <a
              href="inbox.jsp"
              class="btn btn-primary btn-block text-uppercase mb-3">Inbox</a>
            
          </div>
        </div>
        
      </div>
    </div>
   
   
   
   
   
   

    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script>
      $(function() {
        $(".tm-product-name").on("click", function() {
          window.location.href = "edit-product.jsp";
        });
      });
    </script>
  </body>
</html>