
<!-- /*
* Bootstrap 5
* Template Name: Furni
* Template Author: Untree.co
* Template URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="favicon.png">

  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4" />

		<!-- Bootstrap CSS -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
		<link href="css/tiny-slider.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
		<title>Store Enhancer</title>
		
		<script type="text/javascript"> 
        function preventBack() { 
            window.history.forward();  
        } 
          
        setTimeout("preventBack()", 0); 
          
        window.onunload = function () { null }; 
    </script>
    
		
	</head>
	


	<body>
		




		<!-- Start Header/Navigation -->
		<nav class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark" arial-label="Furni navigation bar">

			<div class="container">
				<a class="navbar-brand" href="index.html">Store Enhancer<span>.</span></a>

				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni" aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarsFurni">
				
					<ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
						<li class="nav-item active">
							<a class="nav-link" href="index.html">Home</a>
						</li>
						<li><a class="nav-link" href="shop.html">Log-In</a></li> 
						
						<li><a class="nav-link" href="cart.jsp">Search</a></li>
						
						<li><a class="nav-link" href="contact.jsp">Add</a></li>
					</ul>

					<ul class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-5">
						
					</ul>
				</div>
			</div>
				
		</nav>
		<!-- End Header/Navigation -->

		<!-- Start Hero Section -->
			<div class="hero">
				<div class="container">
					<div class="row justify-content-between">
						<div class="col-lg-5">
							<div class="intro-excerpt">
								<h1>Store Enhancer</h1>
							</div>
						</div>
						<div class="col-lg-7">
							
						</div>
					</div>
				</div>
			</div>
		<!-- End Hero Section -->

		


		<!-- Start Footer Section -->
		<footer class="footer-section">
			<div class="container relative">

				<div class="sofa-img">
					<img src="images/sofa.png" alt="Image" class="img-fluid">
				</div>

				<div class="row">
					<div class="col-lg-8">
						<div class="subscription-form">
							<h3 class="d-flex align-items-center"><span class="me-1"><img src="images/envelope-outline.svg" alt="Image" class="img-fluid"></span><span>Values Entered </span></h3>
					 
					  <%@page import="java.sql.*" %>		
					  <%@page import="java.time.*" %>
 
 
     <% 
     String user_name =  (String)session.getAttribute("user_name");
	
	out.println( "user name: "+user_name );
	
	
	
     String device_name = request.getParameter("device_name");
     String  part_number = request.getParameter("part_number"); 
     
     LocalDate dated = LocalDate.now(); // Create a date object
     LocalTime timed = LocalTime.now(); // Create a time object
     
	 String  machine_used= request.getParameter("machine_used"); 
	 String stores = request.getParameter("stores"); 
	 String  description = request.getParameter("description");
	 
	 String quantity = request.getParameter("quantity");  
     String shelf = request.getParameter("shelf");  
     String cell = request.getParameter("cell");  
     String line = request.getParameter("line"); 
     
     cell = line+" "+ cell;
     String action = "Added";
    // String userd = "Thomas";
     String userd = user_name ;
	 
     
     
  // Save int database
  
  
   // To connect to the database
  
  // Load postgresql Driver. The jar file was downloaded and placed in the lib folder of tomcat server
  
  try {
  Class.forName("org.postgresql.Driver"); 
  }
  catch(Exception e){out.println( e.getClass().getName()+": "+ e.getMessage() );
    }
  
  // Database logic
   String query1 = "insert into history (devicename, partnumber, date, quantity, time, userd, action, description, store, shelf, cell ) values (?,?,?,?,?,?,?,?,?,?,?) ";

    Connection c = null;
    Statement stmt = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;
    long id = 0;
    
    	
    
      try {
         Class.forName("org.postgresql.Driver");
         c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/store", "postgres", "raspberry");
         
         
	  preparedStatement = c.prepareStatement(query1);
	  preparedStatement.setString(1, device_name);
	  preparedStatement.setString(2, part_number);
	  preparedStatement.setString(3, dated.toString() );
	  preparedStatement.setString(4, quantity);
	  preparedStatement.setString(5, timed.toString() );
	  preparedStatement.setString(6, userd);
	  preparedStatement.setString(7, action);
	  preparedStatement.setString(8, description);
	  preparedStatement.setString(9, stores);
	  preparedStatement.setString(10, shelf);
	  preparedStatement.setString(11, cell);
         
	
	 
	int affectedRows = preparedStatement.executeUpdate();
	 
	 
	 
	  if (affectedRows > 0) {
                // get the ID back
                try (ResultSet rs =  preparedStatement.getGeneratedKeys()) {
                    if (rs.next()) {
                        id = rs.getLong(1);
                    }
                } catch (SQLException ex) {
                    System.out.println(ex.getMessage());
                }
            }
	  
	  
	  
	  
	 out.println("ID: " + id + " Device name is: " + device_name + "<br> Partnumber is: "+ part_number+" <br> Machine used :"+ machine_used+ " <br>Store: "+ stores+ "<br> Description: "+ description
     +"<br> Quantity: "+ quantity +"<br> Shelf: "+shelf+"<br> Cell: "+cell );
      
      
      
	   
         preparedStatement.close();
         c.close();
	 
	 // New location to be redirected
         String site = new String("http://13.53.61.254:8080/fumi/contact.jsp");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site); 
	 
	
      } catch ( Exception e ) {
	out.println( e.getClass().getName()+": "+ e.getMessage() );
         
      }
      
        //End to connect to a database
	
     %>


						</div>
					</div>
				</div>

				

					


						</div>
					</div>

				</div>

				

			</div>
		</footer>
		<!-- End Footer Section -->	


		<script src="js/bootstrap.bundle.min.js"></script>
		<script src="js/tiny-slider.js"></script>
		<script src="js/custom.js"></script>
	</body>

</html>
