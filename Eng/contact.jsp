<!-- /*
* Bootstrap 5
* Template Name: Furni
* Template Author: Untree.co
* Template URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
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


	<script>  
	
	
	function isNumeric(str) {
  if (typeof str != "string") return false // we only process strings!  
  return !isNaN(str) && // use type coercion to parse the _entirety_ of the string (`parseFloat` alone does not do this)...
         !isNaN(parseFloat(str)) // ...and ensure strings of whitespace fail
}




		
function validateform(){  
var device_name = document.myform.device_name.value;  
var part_number = document.myform.part_number.value;  
var machine_used= document.myform.machine_used.value;  
var stores = document.myform.stores.value;  
var description = document.myform.description.value;   
var quantity = document.myform.quantity.value; 
var shelf = document.myform.shelf.value; 
var cell = document.myform.cell.value; 
var line = document.myform.line.value; 




// selectElement = document.querySelector('#select1');
       // output = selectElement.value;

  
if (device_name==null || device_name==""){  
  alert("Device name can't be blank");  
  return false;  
}

else if(part_number ==null || part_number == ""){  
  alert("Part number can't be blank");  
  return false;  
  }  
  
  else if(quantity ==null || quantity == ""){  
  alert("Quantity can't be blank");  
  return false;  
  }  
  
  
  else if(description ==null || description== ""){  
    
  alert("Description can't be blank ");  
  document.cookie = "jsp_cookie", "set"; 
  return false;  
  
  } 
  

 if(!isNumeric(quantity) ){
   
   alert("Quantity must be a number");  
   return false;
 } 
 
 
 
if (confirm("Do you want to add the new items") == true) {
  return true;
  
} else {
  return false;
}


}  

function validate_link_jsp_cookie(){ 
  document.cookie = "jsp_cookie, set";  
  
   }

</script> 


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
							<a class="nav-link" href="index.html" onsubmit="return validate_link_jsp_cookie()" >Home</a>
						</li>
						<li><a class="nav-link" href="shop.html"  onsubmit="return validate_link_jsp_cookie()" >Log-In</a></li> 
						
						<li><a class="nav-link" href="cart.jsp"  onsubmit="return validate_link_jsp_cookie()" >Search</a></li>
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
								<h1>Add New Items</h1>
								<p class="mb-4">Received items should be added here</p>
								
							</div>
						</div>
						<div class="col-lg-7">
							<div class="hero-img-wrap">
								<img src="images/couch.png" class="img-fluid">
							</div>
						</div>
					</div>
				</div>
			</div>
		<!-- End Hero Section -->

		
		<!-- Start Contact Form -->
		<div class="untree_co-section">
      <div class="container">

        <div class="block">
          <div class="row justify-content-center">


            <div class="col-md-8 col-lg-8 pb-4">


              <div class="row mb-5">
                <div class="col-lg-4">
                  <div  class="service no-shadow align-items-center link horizontal d-flex active" data-aos="fade-left" data-aos-delay="0">
                    <div class="service-icon color-1 mb-4">
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                        <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                      </svg>
                    </div> <!-- /.icon -->
                    <div class="service-contents">
                      <p>New Line Currency</p>
                    </div> <!-- /.service-contents-->
                  </div> <!-- /.service -->
                </div>

                <div class="col-lg-4">
                  <div  class="service no-shadow align-items-center link horizontal d-flex active" data-aos="fade-left" data-aos-delay="0">
                    <div class="service-icon color-1 mb-4">
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope-fill" viewBox="0 0 16 16">
                        <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
                      </svg>
                    </div> <!-- /.icon -->
                    <div class="service-contents">
                     
                    </div> <!-- /.service-contents-->
                  </div> <!-- /.service -->
                </div>

                <div class="col-lg-4">
                  <div  class="service no-shadow align-items-center link horizontal d-flex active" data-aos="fade-left" data-aos-delay="0">
                    <div class="service-icon color-1 mb-4">
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone-fill" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
                      </svg>
                    </div> <!-- /.icon -->
                    <div class="service-contents">
                      <p>Departmental Phone Number</p>
                    </div> <!-- /.service-contents-->
                  </div> <!-- /.service -->
                </div>
              </div>
	      
	      
<%
         Cookie cookie = null;
         Cookie[] cookies = null;
	 Cookie jsp_cookiesd = null;
	
	
         
         // Get an array of Cookies associated with the this domain
         cookies = request.getCookies();
         
         if( cookies != null ) {
           // out.println("<h2> Found Cookies Name and Value</h2>");
            
            for (int i = 0; i < cookies.length; i++) {
               cookie = cookies[i];
               
               if((cookie.getName( )).compareTo("wilson") == 0 ) {
                
		  jsp_cookiesd = cookie;
		  
               }
               //out.print("Name : " + cookie.getName( ) + ",  ");
              // out.print("Value: " + cookie.getValue( )+" <br/>");
            }
         } else {
            out.println(
            "<h2>No cookies founds</h2>");
         } 
      %>




  <% 
	String myName = "";
	try{
	
	 myName = jsp_cookiesd.getValue( ); 
      }catch(Exception e ){}
      
      myName = "set"; // abandoned the cookie control here, decided not to use it.
	
	if(myName.equals("set") ){
	  
	// To prevent page refresh using cookies via jsp
	jsp_cookiesd = new Cookie("wilson", "not_set");
	//jsp_cookie.setMaxAge(60*60*24); 
	response.addCookie( jsp_cookiesd);
	
	
	
    
	out.println("  Your IP address is " + request.getRemoteAddr() +" and today's date is: " +  (new java.util.Date()).toLocaleString() );
	
	
	String shop_user_name = request.getParameter("user_name");
	String shop_user_password = request.getParameter("password");
	
	
	if ( shop_user_name == null ) {
	 shop_user_name = (String)session.getAttribute("user_name");
	 shop_user_password = (String)session.getAttribute("password");
	 
	
	  }
	
	else {
	  
	session.setAttribute("user_name",shop_user_name );
	session.setAttribute("password",shop_user_password );
	
	  }
	  
	//Global variable to store supplied login username and password from shop
	//String shop_user_name = request.getParameter("user_name");
	//String shop_user_password = request.getParameter("password");
	
	
	String user_namesd = "user_name";
	
	//session.setAttribute("user_name",shop_user_name );
	user_namesd = (String)session.getAttribute("user_name");
	
	
	
	
	
	
	//out.println( "user name: "+user_namesd +" and password: "+(String)session.getAttribute("password") );
	
	
	//Global variables to store entry from database
	String contact_user_name = "";
	String contact_password = "";
	boolean contact_store_A = false;
	boolean contact_store_B = false;
	boolean contact_store_C = false;
	boolean contact_store_D = false;
	String department= "";
	
	
	
	
	
    
  %>
  
  
  
 
  
  <%@page import="java.sql.*" %>
  <% 
  // To connect to the database
  
  // Load postgresql Driver. The jar file was downloaded and placed in the lib folder of tomcat server
  
  try {
  Class.forName("org.postgresql.Driver"); 
  }
  catch(Exception e){out.println( e.getClass().getName()+": "+ e.getMessage() +" error from driver, check driver");
    }
  
  // Database logic
   String query1 = " select * from username where username = ?";

    Connection c = null;
    Statement stmt = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;
    
    	
    
      try {
         Class.forName("org.postgresql.Driver");
         c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/store", "postgres", "raspberry");
         
         
	 preparedStatement = c.prepareStatement(query1);
	  preparedStatement.setString(1, shop_user_name);
         
	
	 String sql = query1 ;
	 
	resultSet = preparedStatement.executeQuery();
	 
	  while (resultSet.next()) {
	    
	    contact_user_name = resultSet.getString("username") ;
	    contact_password =  resultSet.getString("password");
	    contact_store_A =   resultSet.getBoolean("storea");
	    contact_store_B =   resultSet.getBoolean("storeb");
	    contact_store_C =   resultSet.getBoolean("storec");
	    contact_store_D =   resultSet.getBoolean("stored");


	    if(resultSet.getString("department") != null  ){department = resultSet.getString("department") ;
	    }
	  }
	  
	   
         
	 
         preparedStatement.close();
         c.close();
	
      } catch ( Exception e ) {
	out.println( e.getClass().getName()+": "+ e.getMessage() );
         
      }
      
      //End to connect to a database
      
  
  %>
  
 <%  
  
  if(department.equals( "production_view") && contact_password.equals( shop_user_password)){
   // Proceed to production3.jsp
   	  // New location to be redirected
         String site = new String("http://13.53.61.254:8080/fumi/production3.jsp");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site); 
   
   }
   
   
  
   if( contact_user_name.equals( shop_user_name)  && contact_password.equals( shop_user_password)     &&  ( contact_store_A ==true || contact_store_B == true || contact_store_C == true || contact_store_D == true  )  && department.equals( "production_engineer")    ){ 
    
    out.println("<br> Hello " +contact_user_name + "<br> Department is: " +department +"<br><br>");
    
     %>
  
  
  <BR>



              <form  name="myform"  action="contact2.jsp" class="row g-3" method="POST"  onsubmit="return validateform()">
                <div class="row">
                  <div class="col-6">
                    <div class="form-group">
                      <label class="text-black" for="fname">Device Name</label>
                      <input type="text" class="form-control"  name="device_name" >
                    </div>
                  </div>
                  <div class="col-6">
                    <div class="form-group">
                      <label class="text-black" for="lname">Part Number</label>
                      <input type="text" class="form-control"  name="part_number" >
                    </div>
		    <div class="form-group">
                      <label class="text-black" for="lname">Quantity</label>
                      <input type="text" class="form-control"  name="quantity" >
                    </div>
		    
                  </div>
                </div>
                <div class="form-group">
                  <label class="text-black" for="email">Machine Used</label>

		
		    <select name="machine_used"    class="form-control"> 
		    <option value="SOI">SOI </option> 
		    <option value="SUSI">SUSI</option> 
		    <option value="SUNU">SUNU</option> 
		    <option value="GIETZ">GIETZ</option> 
		    <option value="KOMORI">KOMORI</option> 
		    <option value="NOTASCREEN">NOTASCREEN</option> 
		    <option value="BPS S9">BPS S9</option>
		    <option value="BPS 2000">BPS 2000</option>  
		    <option value="HUGOBECK">HUGOBECK</option> 
		    </select>
                </div>
		
		
		
		
		<div class="form-group">
                  <label class="text-black" for="email">Shelf</label>

		
		    <select name="shelf"    class="form-control"> 
		    <option value="Orlof">Orlof </option> 
		    <option value="Cutpak">Cutpak</option> 
		    <option value="SUNU">SUNU</option> 
		    <option value="Orlof_3">Orlof_3</option> 
		    <option value="Schuller">Schuller</option> 
		    <option value="Kalfass">Kalfass</option> 
		    <option value="Bobst">Bobst</option> 
		    <option value="Notanumber">Notanumber</option> 
		    <option value="SUSI">SUSI</option> 
		    <option value="Shiremore">Shiremore</option> 
		    <option value="Notascreen">NotaScreen</option> 
		    </select>
                </div>
		
		<div class="form-group">
                  <label class="text-black" for="email">Cell</label>

		
		    <select name="cell"    class="form-control"> 
		    <option value="B_1">B 1 </option> 
		    <option value="B_2">B 2</option> 
		    <option value="B_3">B 3</option> 
		    <option value="B_4">B 4</option> 
		    <option value="B_5">B 5</option> 
		    <option value="B_6">B 6</option> 
		    <option value="B_7">B 7</option> 
		    <option value="B_8">B 8</option> 
		    <option value="B_9">B 9</option> 
		    <option value="B_10">B 10</option> 
		    <option value="B_11">B 11</option> 
		    <option value="B_12">B 12</option> 
		    <option value="B_13">B 13</option> 
		    <option value="B_14">B 14</option> 
		    <option value="B_15">B 15</option> 
		    <option value="B_16">B 16</option> 
		    <option value="B_17">B 17</option> 
		    <option value="B_18">B 18</option> 
		    <option value="B_19">B 19</option> 
		    <option value="B_20">B 20</option> 
		    <option value="B_21">B 21</option> 
		    <option value="B_22">B 22</option> 
		    <option value="B_23">B 23</option>
		    <option value="B_24">B 24</option>
		    <option value="B_25">B 25</option>
		    <option value="B_26">B 26</option>
		    <option value="B_27">B 27</option>
		    <option value="B_28">B 28</option>
		    <option value="B_29">B 29</option>
		    <option value="B_30">B 30</option>
		    </select>
                </div>
		
		
		<div class="form-group">
                  <label class="text-black" for="email">Line Number</label>

		
		    <select name="line"    class="form-control"> 
		    <option value="Line 1">Line 1 </option> 
		    <option value="Line 2">Line 2</option> 
		    <option value="Line 3">Line 3</option> 
		    <option value="Line 4">Line 4</option> 
		    <option value="Line 5">Line 5</option> 
		    <option value="Line 6">Line 6</option>
		    <option value="Line 7">Line 7</option>
		    <option value="Line 8">Line 8</option>
		    <option value="Line 9">Line 9</option>
		    </select>
                </div>
		
		<div class="form-group">
                  <label class="text-black" for="email">Stores</label>



		
		    <select name="stores"   class="form-control"> 
		      
		      <% if( contact_store_A == true ) { %>
		    <option value="New Line Store Down">New Line Store Down </option>
		    <% } %>
		    
		    <% if( contact_store_B== true ) { %>
		    <option value="New Line Store Up">New Line Store Up</option> 
		     <% } %>
		     
		     <% if( contact_store_C== true ) { %>
		    <option value="Old Line Store Up">Old Line Store Up</option> 
		    <% } %>
		    
		     <% if( contact_store_D== true ) { %>
		    <option value="KBA Office Store">KBA Office Store</option> 
		     <% } %>
		     
		    
		    
		    </select>
                </div>

                <div class="form-group mb-5">
                  <label class="text-black" for="message">Description</label>
                  <textarea name="description" class="form-control" id="message" cols="30" rows="5"></textarea>
                </div>

                <button type="submit" class="btn btn-primary-hover-outline">Save</button>
              </form>

            </div>

          </div>

        </div>

      </div>


    </div>
  </div>

  <!-- End Contact Form -->

	<% }
	
	
	
	//For production staff
	
	else if( ( department.equals( "production_corepress")  || department.equals( "production_number") ) && contact_password.equals( shop_user_password) ){
	   // New location to be redirected
	  // out.println("<br> Department: " +department);
	   
         String site = new String("http://13.53.61.254:8080/fumi/production.jsp");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site); 
	  
	}
	
	
	
	
	// For those meant to search for items alone
	else if( contact_user_name.equals( shop_user_name)  && contact_password.equals( shop_user_password)  && department.equals( "production_engineer") ){
	  
	   //out.println("<br> Please click on the search tab to continue" );
	   //out.println("<br> Department: " +department);
	  
	  // New location to be redirected
         String site = new String("http://13.53.61.254:8080/fumi/cart.jsp");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site); 
	  
	  }
	 
	  // For plastirota staff
	  
	  // For those meant to search for items alone
	else if( contact_user_name.equals( shop_user_name)  && contact_password.equals( shop_user_password)  && department.equals( "production_plastirota") ){
	  
	   //out.println("<br> Please click on the search tab to continue" );
	   //out.println("<br> Department: " +department);
	  
	  // New location to be redirected
         String site = new String("http://13.53.61.254:8080/fumi/plastirota.jsp");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("Location", site); 
	  
	  }
	  
	  
	  
	
	else{ out.println("<br> Seems your login credentials are wrong, you can try again." );
	  
	  //out.println("<br>Department: " + department); 
	   }
	
	
      }
      
      else{ out.println("<br> Please login again, perhaps you didn't use the page links to navigate " ); }
	
	 %>	

	

		<script src="js/bootstrap.bundle.min.js"></script>
		<script src="js/tiny-slider.js"></script>
		<script src="js/custom.js"></script>
	</body>

</html>
