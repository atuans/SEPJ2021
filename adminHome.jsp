<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Welcome Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!--js-->
<script src="js/jquery-2.1.1.min.js"></script> 
<!--icons-css-->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Carrois+Gothic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Work+Sans:400,500,600' rel='stylesheet' type='text/css'>
<!--static chart-->
<script src="Admin/js/Chart.min.js"></script>
<!--//charts-->
<!-- geo chart -->
    <script src="//cdn.jsdelivr.net/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
    <script>window.modernizr || document.write('<script src="lib/modernizr/modernizr-custom.js"><\/script>')</script>
    <!--<script src="lib/html5shiv/html5shiv.js"></script>-->
     <!-- Chartinator  -->
    <script src="js/chartinator.js" ></script>
    <script type="text/javascript">
        jQuery(function ($) {

            var chart3 = $('#geoChart').chartinator({
                tableSel: '.geoChart',

                columns: [{role: 'tooltip', type: 'string'}],
         
                colIndexes: [2],
             
                rows: [
                    ['China - 2015'],
                    ['Colombia - 2015'],
                    ['France - 2015'],
                    ['Italy - 2015'],
                    ['Japan - 2015'],
                    ['Kazakhstan - 2015'],
                    ['Mexico - 2015'],
                    ['Poland - 2015'],
                    ['Russia - 2015'],
                    ['Spain - 2015'],
                    ['Tanzania - 2015'],
                    ['Turkey - 2015']],
              
                ignoreCol: [2],
              
                chartType: 'GeoChart',
              
                chartAspectRatio: 1.5,
             
                chartZoom: 1.75,
             
                chartOffset: [-12,0],
             
                chartOptions: {
                  
                    width: null,
                 
                    backgroundColor: '#fff',
                 
                    datalessRegionColor: '#F5F5F5',
               
                    region: 'world',
                  
                    resolution: 'countries',
                 
                    legend: 'none',

                    colorAxis: {
                       
                        colors: ['#679CCA', '#337AB7']
                    },
                    tooltip: {
                     
                        trigger: 'focus',

                        isHtml: true
                    }
                }

               
            });                       
        });
    </script>
<!--geo chart-->

<!--skycons-icons-->
<script src="js/skycons.js"></script>
<!--//skycons-icons-->
</head>
<body>
	<div class="page-container">	
   <div class="left-content">
	   <div class="mother-grid-inner">
            <!--header start here-->
				<div class="header-main">
					<div class="header-left">
							<div class="logo-name">
									 <a href="index.jsp">
									<img id="logo" src="../images/logo.png" alt=""/>
								  </a> 								
							</div>
							<!--search-box-->
								
							<div class="clearfix"> </div>
						 </div>
						 <div class="header-right">
							<div class="profile_details_left"><!--notifications of menu start -->
								<ul class="nofitications-dropdown">
									
									
								</ul>
								<div class="clearfix"> </div>
							</div>
							<!--notification menu end -->
							<div class="profile_details">		
								<ul>
									<li class="dropdown profile_details_drop">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
											<div class="profile_img">	
												<span class="prfil-img"><img src="" alt=""> </span> 
												<div class="user-name">
													<p>Welcome</p>
													<span>Administrator</span>
												</div>
												<i class="fa fa-angle-down lnr"></i>
												<i class="fa fa-angle-up lnr"></i>
												<div class="clearfix"></div>	
											</div>	
										</a>
										<ul class="dropdown-menu drp-mnu">
											<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
											<li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li> 
											<li> <a href="LogOut.jsp"><i class="fa fa-sign-out"></i> Logout</a> </li>
										</ul>
									</li>
								</ul>
							</div>
							<div class="clearfix"> </div>				
						</div>
				     <div class="clearfix"> </div>	
				</div>
<!--heder end here-->
<!-- script-for sticky-nav -->
		<script>
		$(document).ready(function() {
			 var navoffeset=$(".header-main").offset().top;
			 $(window).scroll(function(){
				var scrollpos=$(window).scrollTop(); 
				if(scrollpos >=navoffeset){
					$(".header-main").addClass("fixed");
				}else{
					$(".header-main").removeClass("fixed");
				}
			 });
			 
		});
		</script>
		<!-- /script-for sticky-nav -->
<!--inner block start here-->
<div class="inner-block">
<!--market updates updates-->
	 <div class="market-updates">
			<div class="col-md-4 market-update-gd">
				<div class="market-update-block clr-block-1">
					<div class="col-md-8 market-update-left">
						<h3>83</h3>
						<h4>Registered User</h4>
					</div>
					<div class="col-md-4 market-update-right">
						<i class="fa fa-file-text-o"> </i>
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-4 market-update-gd">
				<div class="market-update-block clr-block-2">
				 <div class="col-md-8 market-update-left">
					<h3>135</h3>
					<h4>Daily Visitors</h4>
				  </div>
					<div class="col-md-4 market-update-right">
						<i class="fa fa-eye"> </i>
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-4 market-update-gd">
				<div class="market-update-block clr-block-3">
					<div class="col-md-8 market-update-left">
						<h3>23</h3>
						<h4>New Messages</h4>
					</div>
					<div class="col-md-4 market-update-right">
						<i class="fa fa-envelope-o"> </i>
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
		</div>
<!--market updates end here-->
<!--mainpage chit-chating-->
<div class="chit-chat-layer1">
	
      <div class="col-md-6 chit-chat-layer1-rit">    	
      	  <div class="geo-chart">
					<section id="charts1" class="charts">
				<div class="wrapper-flex">
				
				    <table id="myTable" class="geoChart tableChart data-table col-table" style="display:none;">
				        <caption>Student Nationalities Table</caption>
				        <tr>
				            <th scope="col" data-type="string">Country</th>
				            <th scope="col" data-type="number">Number of Students</th>
				            <th scope="col" data-role="annotation">Annotation</th>
				        </tr>
				        <tr>
				            <td>China</td>
				            <td align="right">20</td>
				            <td align="right">20</td>
				        </tr>
				        <tr>
				            <td>Colombia</td>
				            <td align="right">5</td>
				            <td align="right">5</td>
				        </tr>
				        <tr>
				            <td>France</td>
				            <td align="right">3</td>
				            <td align="right">3</td>
				        </tr>
				        <tr>
				            <td>Italy</td>
				            <td align="right">1</td>
				            <td align="right">1</td>
				        </tr>
				        <tr>
				            <td>Japan</td>
				            <td align="right">18</td>
				            <td align="right">18</td>
				        </tr>
				        <tr>
				            <td>Kazakhstan</td>
				            <td align="right">1</td>
				            <td align="right">1</td>
				        </tr>
				        <tr>
				            <td>Mexico</td>
				            <td align="right">1</td>
				            <td align="right">1</td>
				        </tr>
				        <tr>
				            <td>Poland</td>
				            <td align="right">1</td>
				            <td align="right">1</td>
				        </tr>
				        <tr>
				            <td>Russia</td>
				            <td align="right">11</td>
				            <td align="right">11</td>
				        </tr>
				        <tr>
				            <td>Spain</td>
				            <td align="right">2</td>
				            <td align="right">2</td>
				        </tr>
				        <tr>
				            <td>Tanzania</td>
				            <td align="right">1</td>
				            <td align="right">1</td>
				        </tr>
				        <tr>
				            <td>Turkey</td>
				            <td align="right">2</td>
				            <td align="right">2</td>
				        </tr>
				
				    </table>
				
				   
				
				
				</div><!-- .wrapper-flex -->
				</section>				
			</div>
      </div>
     <div class="clearfix"> </div>
</div>
<!--main page chit chating end here-->
<!--main page chart start here-->
<div class="main-page-charts">
   <div class="main-page-chart-layer1">
		
		
	 <div class="clearfix"> </div>
  </div>
 </div>
<!--main page chart layer2-->
<div class="chart-layer-2">
	
	<div class="col-md-6 chart-layer2-right">
			<div class="prograc-blocks">
		     <!--Progress bars-->
	        <div class="home-progres-main">
	           <h3>Total Sales</h3>
	         </div>
	        <div class='bar_group'>
					<div class='bar_group__bar thin' label='Rating' show_values='true' tooltip='true' value='343'></div>
					<div class='bar_group__bar thin' label='Quality' show_values='true' tooltip='true' value='235'></div>
					<div class='bar_group__bar thin' label='Amount' show_values='true' tooltip='true' value='550'></div>
					<div class='bar_group__bar thin' label='Farming' show_values='true' tooltip='true' value='456'></div>
		    </div>
				<script src="js/bars.js"></script>

	      <!--//Progress bars-->
	      </div>
	</div>
	<div class="col-md-6 chart-layer2-left">
		<div class="content-main revenue">			
					<h3>Total Revenue</h3>
					<canvas id="radar" height="300" width="300" style="width: 300px; height: 300px;"></canvas>
						<script>
							var radarChartData = {
								labels : ["","","","","","",""],
								datasets : [
									{
										fillColor : "rgba(104, 174, 0, 0.83)",
										strokeColor : "#68ae00",
										pointColor : "#68ae00",
										pointStrokeColor : "#fff",
										data : [65,59,90,81,56,55,40]
									},
									{
										fillColor : "rgba(236, 133, 38, 0.82)",
										strokeColor : "#ec8526",
										pointColor : "#ec8526",
										pointStrokeColor : "#fff",
										data : [28,48,40,19,96,27,100]
									}
								]
								
							};
							new Chart(document.getElementById("radar").getContext("2d")).Radar(radarChartData);
						</script>
		</div>
	</div>
  <div class="clearfix"> </div>
</div>

<!--climate start here-->
<div class="climate">
	<div class="col-md-4 climate-grids">
		<div class="climate-grid1">
			<div class="climate-gd1-top">
				<div class="col-md-6 climate-gd1top-left">
					<h4>Aprill 6-wed</h4>
					<h3>12:30<span class="timein-pms">PM</span></h3>				
					<p>Humidity:</p>					
					<p>Sunset:</p>
					<p>Sunrise:</p>
				</div>
				<div class="col-md-6 climate-gd1top-right">
					  <span class="clime-icon"> 
					  	<figure class="icons">
								<canvas id="partly-cloudy-day" width="64" height="64">
								</canvas>
							</figure>
						<script>
							 var icons = new Skycons({"color": "#fff"}),
								  list  = [
									"clear-night", "partly-cloudy-day",
									"partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",
									"fog"
								  ],
								  i;

							  for(i = list.length; i--; )
								icons.set(list[i], list[i]);

							  icons.play();
						</script>					  
				   </span>					
					  <p>88%</p>					
					  <p>5:40PM</p>
					   <p>6:30AM</p>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="climate-gd1-bottom">
				<div class="col-md-4 cloudy1">
						<h4>Hongkong</h4>
						  <figure class="icons">
							<canvas id="sleet" width="58" height="58">
							</canvas>
					       </figure>
					       <script>
								 var icons = new Skycons({"color": "#fff"}),
									  list  = [
										"clear-night", "clear-day",
										"partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",
										"fog"
									  ],
									  i;
	
								  for(i = list.length; i--; )
									icons.set(list[i], list[i]);
	
								  icons.play();
							</script>
						<h3>10c</h3>
					</div>
					<div class="col-md-4 cloudy1">
						<h4>UK</h4>
						<figure class="icons">
					<canvas id="cloudy" width="58" height="58"></canvas>
				</figure>					
					<script>
							 var icons = new Skycons({"color": "#fff"}),
								  list  = [
									"clear-night", "cloudy",
									"partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",
									"fog"
								  ],
								  i;

							  for(i = list.length; i--; )
								icons.set(list[i], list[i]);

							  icons.play();
						</script>
						<h3>6c</h3>
					</div>
					<div class="col-md-4 cloudy1">
						<h4>USA</h4>
						<figure class="icons">
							<canvas id="snow" width="58" height="58">
							</canvas>
						</figure>
				        <script>
							 var icons = new Skycons({"color": "#fff"}),
								  list  = [
									"clear-night", "clear-day",
									"partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",
									"fog"
								  ],
								  i;

							  for(i = list.length; i--; )
								icons.set(list[i], list[i]);

							  icons.play();
						</script>
						<h3>10c</h3>
					</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="col-md-4 climate-grids">
		<div class="climate-grid2">
			<span class="shoppy-rate"><h4>$180</h4></span>
			<ul>
				<li> <i class="fa fa-credit-card"> </i> </li>
				<li> <i class="fa fa-usd"> </i> </li>
			</ul>
		</div>
		<div class="shoppy">
		<h3>Those Who Hate Shopping?</h3>
		</div>
	</div>
	<div class="col-md-4 climate-grids">
		<div class="climate-grid3">
			<div class="popular-brand">
				<div class="col-md-6 popular-bran-left">
				     <h3>Popular</h3>
				     <h4>Brand of this month</h4>
				     <p> Duis aute irure  in reprehenderit.</p>
				</div>
				<div class="col-md-6 popular-bran-right">
					<h3>Polo</h3>
				</div>
			  <div class="clearfix"> </div>
			</div>
			<div class="popular-follow">
				<div class="col-md-6 popular-follo-left">
					<p>Lorem ipsum dolor sit amet, adipiscing elit.</p>
				</div>
				<div class="col-md-6 popular-follo-right">
					<h4>Follower</h4>
					<h5>2892</h5>
				</div>
			  <div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<div class="clearfix"> </div>
</div>
<!--climate end here-->
</div>
<!--inner block end here-->
<!--copy rights start here-->
<div class="copyrights">
	 <p>© 2016 Shoppy. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
</div>	
<!--COPY rights end here-->
</div>
</div>
<!--slider menu-->
    <div class="sidebar-menu">
		  	<div class="logo"> <a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> <a href="#"> <span id="logo" ></span> 
			      <!--<img id="logo" src="" alt="Logo"/>--> 
			  </a> </div>		  
		    <div class="menu">
		      <ul id="menu" >
		        <li><a href="#"><i class="fa fa-cogs"></i><span>Customize Store</span><span class="fa fa-angle-right" style="float: right"></span></a>
		          <ul>
		            <li><a href="products.jsp">Products</a></li>
		            <li><a href="addNewProduct.jsp">Add Products</a></li>	
		            <li><a href="edit-product.html">Edit Products</a></li>		            
		            	            
		          </ul>
		        </li>
		       
		     
		        		        <li><a href="#"><i class="fa fa-envelope"></i><span>Mailbox</span><span class="fa fa-angle-right" style="float: right"></span></a>
		        	 <ul id="menu-academico-sub" >
			            <li id="menu-academico-avaliacoes" ><a href="inbox.jsp">Inbox</a></li>
			            <li id="menu-academico-boletim" ><a href="OrderReceive.jsp">Order Receive</a></li>
		             </ul>
		        </li>
		       
		         <li><a href="#"><i class="fa fa-shopping-cart"></i><span>E-Commerce</span><span class="fa fa-angle-right" style="float: right"></span></a>
		         	<ul id="menu-academico-sub" >
			            <li id="menu-academico-avaliacoes" ><a href="product.html">Product</a></li>
			            <li id="menu-academico-boletim" ><a href="price.html">Price</a></li>
		             </ul>
		         </li>
		      </ul>
		    </div>
	 </div>
	<div class="clearfix"> </div>
</div>
<!--slide bar menu end here-->
<script>
var toggle = true;
            
$(".sidebar-icon").click(function() {                
  if (toggle)
  {
    $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
    $("#menu span").css({"position":"absolute"});
  }
  else
  {
    $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
    setTimeout(function() {
      $("#menu span").css({"position":"relative"});
    }, 400);
  }               
                toggle = !toggle;
            });
</script>
<!--scrolling js-->
		<script src="js/jquery.nicescroll.js"></script>
		<script src="js/scripts.js"></script>
		<!--//scrolling js-->
<script src="js/bootstrap.js"> </script>
<!-- mother grid end here-->
</body>
</html>