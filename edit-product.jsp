<%@page import="DB.DBConnection" %>
<%@page import="java.sql.*" %>
    <%@ page import ="BEAN.*"%>
    <%@ page import ="DAO.*"%>
    <%@ page import ="java.sql.*"%>
    <%@ page import ="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Edit Product </title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700"/>
    <link rel="stylesheet" href="css/fontawesome.min.css" />
    <link rel="stylesheet" href="jquery-ui-datepicker/jquery-ui.min.css" type="text/css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/templatemo-style.css">
    

	
  </head>

  <body>
   
    <%
        List<Brand> li=new BrandDaoImp().getAllBrand(); 
        List<Cloth> lic=new ClothDaoImp().getAllCloth(); 
    %>
    
 <h2><a class="back" href="products.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h2>
 

   
   <nav class="navbar navbar-expand-xl">
      <div class="container h-100">
        <a class="navbar-brand" href="index.html">
          <h1 class="tm-site-title mb-0">Product Admin</h1>
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
              <a class="nav-link active" href="products.html">
                <i class="fas fa-shopping-cart"></i> Products
              </a>
            </li>

    
          </ul>
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link d-block" href="login.html">
                Admin, <b>Logout</b>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="container tm-mt-big tm-mb-big">
      <div class="row">
        <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
          <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
            <div class="row">
              <div class="col-12">
                <h2 class="tm-block-title d-inline-block">Edit Product</h2>
              </div>
            </div>
             <div class="row tm-edit-product-row">
              <div class="col-xl-6 col-lg-6 col-md-12">
              
              
               <%
                		String id = request.getParameter("productId");
                	
                		try{
                	
	                	Connection connection = DBConnection.CreaterConnection();
	            		Statement st = connection.createStatement();
	            		ResultSet rs = st.executeQuery("select * from Product where productId='"+id+"'");
	            		
	            		while(rs.next())
	            		{

                	%>  
                 <form action="ProductController" method="post" class="tm-edit-product-form">
               <input type="hidden" name="action" value="updateProduct">
              
            		  <div class="form-group mb-3">
	                    <label for="name">Product Name
	                    </label>
	                    <input name="productTitle" type="text" class="form-control validate" value="<%=rs.getString(2) %>" placeholder="Enter product name.." required/>
                	  </div>
                 
                 
	                   <div class="form-group mb-3">
	                    <label for="description">Price</label>
	                	<input name="productPrice" type="text" class="form-control validate" value="<%=rs.getString(5) %>" placeholder="Enter price.." required/>
	                    
	                  </div>
                  	<div class="form-group mb-3">
	                    <label for="description">Description</label>
	                	<input name="productDescription" type="text" class="form-control validate" value="<%=rs.getString(3) %>" placeholder="Enter Descriptionn.." required/>
	                    
	                  </div>
                  
	                 
              
		               <div class="row">                 
		                  <div class="form-group mb-3 col-xs-12 col-sm-6">
		                          <label
		                            for="stock">Quantity
		                          </label>
		                          <input id="stock" name="productQuantity"type="text" value="<%=rs.getString(7) %>" class="form-control validate" required/>
		                   </div>
		                         
		                      <div class="form-group mb-3 col-xs-12 col-sm-6">
		                          <label>     Product For
		                          </label>
		                          <input  name="productFor" type="text" value="<%=rs.getString(8) %>" class="form-control validate" required/>
		                        </div>  
		                  </div>
                  </div>
 			
              <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                <div class="tm-product-img-edit mx-auto">
                  <img src="images/Clothing/<%=rs.getString(4) %>" alt="Product image" class="img-fluid d-block mx-auto">
                  <i
                    class="fas fa-cloud-upload-alt tm-upload-icon"
                    onclick="document.getElementById('fileInput').click();"
                  ></i>
                </div>
                <div class="custom-file mt-3 mb-3">
                  <input id="fileInput" type="file" style="display:none;" />
                  <input
                    type="button"
                    class="btn btn-primary btn-block mx-auto"
                    value="CHANGE IMAGE NOW"
                    onclick="document.getElementById('fileInput').click();"
                  />
                </div>
              </div>
              <div class="col-12">
                <button type="submit" class="btn btn-primary btn-block text-uppercase">Update Now</button>
              </div>
            </form> 
            	 <% 
            		}
            		}
     				catch(Exception e){
     					System.out.println(e);     					
     				}%> 
     				
     				
            </div> 
            
           
          </div>
        </div>
      </div>
    </div>
    
    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="jquery-ui-datepicker/jquery-ui.min.js"></script>
    <!-- https://jqueryui.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script>
      $(function() {
        $("#expire_date").datepicker({
          defaultDate: "10/22/2020"
        });
      });
    </script>
    
  </body>
</html>
