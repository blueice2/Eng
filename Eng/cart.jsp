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
		<title> Store Enhancer </title>
	
	
	
		

		
	</head>
	
	
	
	

 



<script>  
function wilson(){ 
  
  //document.cookie="username=Octagon";
  
  alert("Hello there wilson");
 
  

  

  
}

</script>  

	<script>  


function GFG_CLICK(clicked){
  

  
  
  
 
 
const myArray = clicked.split("_");




let text1 = myArray[0];
let text2 = "_text";
let text3 = "_store";
let text4 = "_shelf";
let text5 = "_cell";
let text6 = "_devicename";
let text7 = "_description";
let text8 = "_available";

let quantity_id  = text1.concat(text2);
let quantity_id2 = quantity_id.trim();
let store = text1.concat(text3).trim();

  if(Number(quantity_id2)== 0  ){
  alert("Entered number: 0");
  return false;
  }
let shelf = text1.concat(text4).trim();
let cell = text1.concat(text5).trim();
let devicename = text1.concat(text6).trim();
let description = text1.concat(text7).trim();
let available = text1.concat(text8 ).trim();

let action = "Removed";



var f_quantity = document.getElementById(quantity_id2 ).value;

var f_store = document.getElementById(store).textContent;


var f_shelf = document.getElementById(shelf).textContent;
var f_cell = document.getElementById(cell).textContent; 
var f_devicename = document.getElementById(devicename ).textContent;
var f_description = document.getElementById(description).textContent;
var f_available = document.getElementById(available).textContent;



  if(Number(f_quantity)== 0){
    alert("Entered number is 0");
     return false;

}

else if(Number(f_quantity) > Number(f_available) ){
   alert("Entered number is greater than what is available in the store");
     return false;
  }


f_quantity = Number(f_available) - Number(f_quantity);


// document.cookie="username=Octagon";
 document.cookie="action=Removed";
 document.cookie="partnumber="+myArray[0];
 //document.cookie="username="+myArray[1];
 document.cookie="f_quantity="+f_quantity;
 document.cookie="f_store="+f_store.split(' ').join('&*');
 document.cookie="f_shelf ="+f_shelf.split(' ').join('&*');;
 document.cookie="f_cell="+f_cell.split(' ').join('&*');
 document.cookie="f_devicename="+f_devicename.split(' ').join('&*');;
 document.cookie="f_description="+f_description.split(' ').join('&*');;


  
  
   
if (confirm("Do you want to remove the items") == true) {
  window.location.assign("http://15.45.21.246:8080/fumi/remove.jsp"); 
  
} else {
  return false;
}
  
  
  } // end of GFG_CLICK(clicked)




function GFG_CLICKS(clicked){
  

  
  
  
 
 
const myArray = clicked.split("_");




let text1 = myArray[0];
let text2 = "_text_add";
let text3 = "_store";
let text4 = "_shelf";
let text5 = "_cell";
let text6 = "_devicename";
let text7 = "_description";
let text8 = "_available";

let quantity_id  = text1.concat(text2);
let quantity_id2 = quantity_id.trim();
let store = text1.concat(text3).trim();

  if(Number(quantity_id2)== 0  ){
  alert("Entered number: 0");
  return false;
  }
let shelf = text1.concat(text4).trim();
let cell = text1.concat(text5).trim();
let devicename = text1.concat(text6).trim();
let description = text1.concat(text7).trim();
let available = text1.concat(text8 ).trim();

let action = "Removed";



var f_quantity = document.getElementById(quantity_id2 ).value;

var f_store = document.getElementById(store).textContent;


var f_shelf = document.getElementById(shelf).textContent;
var f_cell = document.getElementById(cell).textContent; 
var f_devicename = document.getElementById(devicename ).textContent;
var f_description = document.getElementById(description).textContent;
var f_available = document.getElementById(available).textContent;



  if(Number(f_quantity)== 0){
    alert("Entered number is 0");
     return false;

}




//f_quantity = Number(f_available) - Number(f_quantity);


// document.cookie="username=Octagon";
 document.cookie="action=Removed";
 document.cookie="partnumber="+myArray[0];
 //document.cookie="username="+myArray[1];
 document.cookie="f_quantity="+f_quantity;
 document.cookie="f_store="+f_store.split(' ').join('&*');
 document.cookie="f_shelf ="+f_shelf.split(' ').join('&*');;
 document.cookie="f_cell="+f_cell.split(' ').join('&*');
 document.cookie="f_devicename="+f_devicename.split(' ').join('&*');;
 document.cookie="f_description="+f_description.split(' ').join('&*');;

  
  // use to prevent going back in history
  // window.location.replace('https://www.exampleURL.com/');
  
  if (confirm("Do you want to top-up the items") == true) {
window.location.assign("http://15.45.21.246:8080/fumi/topup.jsp"); 
  
} else {
  return false;
}
  
  } // end of GFG_CLICKS(clicked)

</script> 




<script>
/*
window.history.pushState(null, "", window.location.href);
window.onpopstate = function () {
    window.history.pushState(null, "", window.location.href);
};
*/
</script>
   

   <script type="text/javascript"> 
        function preventBack() { 
            window.history.forward();  
        } 
          
        setTimeout("preventBack()", 0); 
          
        window.onunload = function () { null }; 
    </script> 
    


	<body>


<%@page import="java.sql.*" %>
	
<% 

String shop_user_name =  (String)session.getAttribute("user_name");
String shop_user_password  = (String)session.getAttribute("password");
	
	
//Global variables to store entry from database
	String contact_user_name = "";
	String contact_password = "";
	boolean contact_store_A = false;
	boolean contact_store_B = false;
	boolean contact_store_C = false;
	boolean contact_store_D = false;
	

// To connect to the database
  
  // Load postgresql Driver. The jar file was downloaded and placed in the lib folder of tomcat server
  
  try {
  Class.forName("org.postgresql.Driver"); 
  }
  catch(Exception e){out.println( e.getClass().getName()+": "+ e.getMessage() +" error from driver, check driver");
    }
    
     // Database logic
   String query1y = " select * from username where username = ?";

    Connection cy = null;
    Statement stmty = null;
    PreparedStatement preparedStatementy = null;
    ResultSet resultSety = null;
    
    	
    
      try {
         Class.forName("org.postgresql.Driver");
    
           cy = DriverManager.getConnection("jdbc:postgresql://localhost:5432/sewa", "tyui_1", "jigger");
         
	 preparedStatementy = cy.prepareStatement(query1y);
	  preparedStatementy.setString(1, shop_user_name);
         
	
	 String sql = query1y ;
	 
	resultSety = preparedStatementy.executeQuery();
	 
	  while (resultSety.next()) {
	    
	    contact_user_name = resultSety.getString("username") ;
	    contact_password =  resultSety.getString("password");
	    contact_store_A =   resultSety.getBoolean("storea");
	    contact_store_B =   resultSety.getBoolean("storeb");
	    contact_store_C =   resultSety.getBoolean("storec");
	    contact_store_D =   resultSety.getBoolean("stored");
	    
	  }
	
	  
	        preparedStatementy.close();
         cy.close();
	
      } catch ( Exception e ) {
	out.println( e.getClass().getName()+": "+ e.getMessage() );
         
      }
      
      //End to connect to a database
      

%>
   
   

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
						
					<%	if( contact_store_A ==true || contact_store_B == true || contact_store_C == true || contact_store_D == true  ) { %>
						<li><a class="nav-link" href="contact.jsp">Add</a></li>
						
					      <% } %>
						<li><a class="nav-link" href="shift_report.jsp">Daily Report</a></li>
						<li><a class="nav-link" href="table_display.jsp">Table Display</a></li>
						
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
								<h1>Search</h1>
							</div>
						</div>
						<div class="col-lg-7">
							
						</div>
					</div>
				</div>
			</div>
		<!-- End Hero Section -->
		
		
		
	
	  <%@page import="java.util.*" %>
	
<%!

	// Function to modify or reolace string
	  public String modifyString(String s, String s1, String s2) {
	   
    // Stores the resultant String
    String ans = "";
 
    // Traverse the String s
    for (int i = 0; i < s.length(); i++) {
 
      int k = 0;
 
      // If the first character of
      // String s1 matches with the
      // current character in String s
      if (s.charAt(i) == s1.charAt(k)
          && i + s1.length() <= s.length()) {
 
        int j;
 
        // If the complete String
        // matches or not
        for (j = i; j < i + s1.length(); j++) {
 
          if (s.charAt(j) != s1.charAt(k)) {
            break;
          }
          else {
            k = k + 1;
          }
        }
 
        // If complete String matches
        // then replace it with the
        // String s2
        if (j == i + s1.length()) {
          ans += (s2);
          i = j - 1;
        }
 
        // Otherwise
        else {
          ans += (s.charAt(i));
        }
      }
 
      // Otherwise
      else {
        ans += (s.charAt(i));
      }
    }
 
    
    return ans.trim();
    
    
  } // modifyString
  
  // Function to decide if remove string should show
//   List aList = new ArrayList();
   
  
  
	%>


<% 
	String user_name =  (String)session.getAttribute("user_name");
	String user_password = (String)session.getAttribute("password");
	
	// out.println( "user name: "+user_name +" and password: "+(String)session.getAttribute("password")  ); 
	
	out.println( "Hello user: "+user_name ); 
	 
	
	Cookie firstName = new Cookie("username", user_name  );
	 firstName.setMaxAge(60*60*24); 
	 response.addCookie( firstName );
	 
	
	if( user_name  != null){
	  
	    
	//session.setAttribute("user_name",null);
	//session.setAttribute("password",null);
	  
	 
	
%>
	<br/> <br/>
	  
              <div class="row">
                <div class="col-md-6">
                  <div class="row mb-5">
                    
              
	
                
		  
		  
		  <form  name="myform"  action="cart.jsp" class="row g-3" method="POST"  >
                  <div class="row">
                    <div class="col-md-12">
                      <label class="text-black h4" for="coupon">Search</label>
                      <p>Enter Device Name</p>
                    </div>
                    <div class="col-md-8 mb-3 mb-md-0">
                      <input type="text" class="form-control py-3" id="coupon" placeholder="Device Name" name="search_string"/>
		      
	&nbsp;&nbsp;  First Removal: <input type="checkbox" id="myCheck1"  name = "first"  value="First">    
	
  
  
                    </div>
                    <div class="col-md-4">
                      <button class="btn btn-black">Search </button>
                    </div>
                  </div>
		  
		  </form>
                </div>
		 </div>
		  </div>
		  
		  
		  
		  
	

  <%@page import="java.sql.*" %>
  <% 
  // To connect to the database
  
  // Load postgresql Driver. The jar file was downloaded and placed in the lib folder of tomcat server
  
  try {
  Class.forName("org.postgresql.Driver"); 
  }
  catch(Exception e){out.println( e.getClass().getName()+": "+ e.getMessage()+" from driver, check driver" );
    }
  
  // Database logic
  
  String search_string = request.getParameter("search_string");
  

  
  
   //String query1 = " select * from history where devicename like '%?%'";
   
    //String query1 = " select * from history where devicename like '%Pos%'";
    
    String query1 = "";
    
    if( search_string == null ){
      query1 = " select * from history  order by id DESC LIMIT 20 ";
      
     // query1 = " select * from history  order by id DESC  ";
    }
    
    
    else{
    
  //  query1 = " select * from history where devicename ilike ? order by id DESC";
   // query1 = " SELECT DISTINCT  id, date, time, shelf, cell, store, description, devicename, partnumber, userd, action, quantity FROM history where devicename ilike ? ORDER BY id  ";
    
   // select * from history where description ilike 'Encoder&%' order by id desc;
   
   
   
   

    query1 = " select * from history  where description ilike ? ORDER BY id desc ";
   
   // query1 = "select * from history where description ilike '%Encoder&%' order by id desc";
    }
    

    Connection c = null;
    Statement stmt = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;
    
    	
    
      try {
         Class.forName("org.postgresql.Driver");
       

  c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/sewa", "tyui_1", "jigger");
	 
	// out.println("<br> Connection gotten ");
         
         
	 preparedStatement = c.prepareStatement(query1);
	 
	   if( search_string == null ){
      query1 = " select * from history  order by id DESC LIMIT 20 ";
      preparedStatement = c.prepareStatement(query1);
   
    }
    
    //To display all the entry of history table using all, monday or henry as keywords
	
	else if( search_string.equals("all") || search_string.equals("monday") || search_string.equals("henry")){
	   query1 = " select * from history  order by id DESC  ";
	preparedStatement = c.prepareStatement(query1);
       }
		
	 
	 
	else if ( search_string != null){
	  
	 //  query1 = "select * from history where description ilike '%Encoder&%' order by id desc";
	   
	String first ="second";
	
	try{
	 first = request.getParameter("first");   
	 
	 if(first == null){first  ="second";}  
	
      } catch(Exception e){
	out.println("Error: "+e);
	first ="second";}
	
	out.println("&nbsp;&nbsp; First: "+ first+"<br/>");
	
	if(first.equals("First")){
	      query1 = " select * from history  where description ilike ? ORDER BY id desc ";
	  
	   // search_string = modifyString(search_string .trim(), " ", "&*"); 
	  out.println("&nbsp;&nbsp; Search String: "+modifyString(search_string .trim(), "&*", " ") );
	preparedStatement.setString(1, "%"+ search_string + "%");
	  }
	  
	 if(first.equals("second")) {
	  
		      query1 = " select * from history  where description ilike ? ORDER BY id desc ";
	  
	    search_string = modifyString(search_string .trim(), " ", "&*"); 
	  out.println("&nbsp;&nbsp; Search String: "+modifyString(search_string .trim(), "&*", " ") );
	preparedStatement.setString(1, "%"+ search_string + "%");
	    
	    }

       }
       
  

	resultSet = preparedStatement.executeQuery();
	

	  
	  
		
	out.println("  <div class=\"untree_co-section before-footer-section\"> <div class=\"container\"> ");
	out.println(" <div class=\"container\"> ");
	
             out.println("  <div class=\"row mb-5\"> ");
              //out.println("   <form class=\"col-md-12\" method=\"post\"  action=\"remove.jsp\"  onsubmit=\"return validateform()\" >");
	      
	      
                 out.println("  <div class=\"site-blocks-table\"> ");
		    
                  out.println("   <table class=\"table\"> ");
                     out.println("  <thead> ");
                     out.println("    <tr> ");
                        out.println("   <th class=\"product-thumbnail\">Image</th> ");
                        out.println("   <th class=\"product-name\">Device Name</th> ");
                        out.println("   <th class=\"product-price\">Part Number</th> ");
                        out.println("   <th class=\"product-quantity\">Date</th> ");
                         out.println("  <th class=\"product-total\">Time</th> ");
			 out.println("  <th class=\"product-remove\">Available</th> ");
			 out.println("   <th style=\"width:170%\" class=\"product-name\">Description</th> ");
                        out.println("   <th class=\"product-remove\">User</th> ");
			 out.println("  <th class=\"product-remove\">Action</th> ");
			 out.println("  <th class=\"product-remove\">Store</th> ");
			 out.println("  <th class=\"product-remove\">Shelf</th> ");
			 out.println("  <th class=\"product-remove\">Cell</th> ");
			
			   out.println("  <th class=\"product-remove\">Remove</th> ");
			   out.println("  <th class=\"product-remove\">Execute Remove</th> ");
			  
			  if( contact_store_A ==true || contact_store_B == true || contact_store_C == true || contact_store_D == true  ) { 
			   out.println("  <th class=\"product-remove\">Add</th> ");
			   out.println("  <th class=\"product-remove\">Execute Add</th> ");
			   
			 }
			
                      out.println("   </tr> ");
                    out.println("   </thead> ");

		      out.println(" <tbody> ");


	ArrayList aList=new ArrayList();   
	int row_count = 0;   
	 
	  while (resultSet.next()) {
	     int mu= 0; 
	     row_count++;
	     
	   String devicename = resultSet.getString("devicename");
	  devicename = modifyString(devicename.trim(), "&*", " ");
	  
	   String partnumner = resultSet.getString("partnumber");
	   String date = resultSet.getString("date");
	   String time = resultSet.getString("time");
	   String description = resultSet.getString("description") ;
	    description= modifyString(description.trim(), "&*", " ");    
	    
	   String userd = resultSet.getString("userd");
	   String action = resultSet.getString("action");
	   
	   String store = resultSet.getString("store") ;
	   store = modifyString(store.trim(), "&*", " ");
	   
	   String shelf = resultSet.getString("shelf"); 
	   shelf = modifyString(shelf.trim(), "&*", " ");
	   
	   String cell = resultSet.getString("cell") ;
	   cell  = modifyString(cell , "&*", " ").trim();
	   
	   String quantity = resultSet.getString("quantity");
	   try{
	  
	    mu = Integer.parseInt(quantity);
	 } catch(Exception e){};
	 //out.println("mu: "+mu);
	 
	 
	   String remove = "0";
	   

	    
	  
	
	    
	    
                   out.println("      <tr>  ");
		
		   //out.println( " <form action = \"remove2.jsp\" method = \"POST\" onsubmit= \"return wilson()\" >  ");
		   
               out.println("            <td class=\"product-thumbnail\">  ");
	        out.println("       <img src=\"images/product-1.png\" alt=\"Image\" class=\"img-fluid\">  ");
                      out.println("     </td>  ");
                      out.println("     <td class=\"product-name\">  ");
                      out.println("       <h2 class=\"h5 text-black\" <label  id = \""+ partnumner +"_" +"devicename" +"\"  > "+devicename +" </label>  </h2>  ");
                    out.println("       </td>  ");
                      out.println("     <td> "+partnumner +"</td>  ");
		out.println(" 	  <td>" +date+ " </td>  ");
		out.println(" 	  <td> "+time+ " </td>  ");
		out.println(" 	  <td <label  id = \""+ partnumner +"_available"  +"\">" +quantity  + " </label> </td>  ");
		out.println(" 	  <td <label  id = \""+ partnumner +"_description"  +"\">" +description+ " </label> </td>  ");
		out.println(" 	  <td> " +userd +"</td>  ");
		out.println(" 	  <td> " +action +"</td>  ");
			
		
		out.println(" 	  <td <label  id = \""+ partnumner +"_store"  +"\">" +store+ " </label> </td>  ");
		out.println(" 	  <td <label  id = \""+ partnumner +"_shelf"  +"\">" +shelf + " </label> </td>  ");
		out.println(" 	  <td <label  id = \""+ partnumner +"_cell"  +"\">" +cell+ " </label> </td>  ");
		
		
		
		   
		
             
	       
	       
	       // Add logic to decide if Remove and add buttons should show
	       // For Removing
	       
	        if( mu  >= 1 && row_count == 1){
	 
	     out.println("           <td>  ");
                out.println("             <div class=\"input-group mb-3 d-flex align-items-center quantity-container\" style=\"max-width: 120px;\">  ");
                 out.println("              <div class=\"input-group-prepend\">  ");
                out.println("                 <button class=\"btn btn-outline-black decrease\" type=\"button\">&minus;</button>  ");
               out.println("                </div>  ");
                out.println("               <input type=\"text\" id = \""+ partnumner +"_" +"text"+"\"  class=\"form-control text-center quantity-amount\" value= "+ remove+" readonly  style=\"width: 40px;\"  >  ");
		
               out.println("                <div class=\"input-group-append\">  ");
               out.println("                  <button class=\"btn btn-outline-black increase\" type=\"button\">&plus;</button>   ");
               out.println("                </div>  ");
                out.println("             </div>  ");
        
               out.println("            </td>   ");
	       
	       
	      out.println(" 	  <td> " +  "<div class= \"col-md-6\"> <button id = \"   "+ partnumner +"_" +userd +"    \" onClick = \"GFG_CLICK(this.id)\"  class=\"btn btn-outline-black btn-sm btn-block\">Remove</button>  </div>" +  "</td>  ");
	    
	       } 
	       
	       
	       // For Adding
	       
	       	if( (contact_store_A ==true || contact_store_B == true || contact_store_C == true || contact_store_D == true) && row_count == 1  ) { 
		
		    out.println("           <td>  ");
		    
		    
		    
		    // For Adding 
		    
                out.println("             <div class=\"input-group mb-3 d-flex align-items-center quantity-container\" style=\"max-width: 120px;\">  ");
                 out.println("              <div class=\"input-group-prepend\">  ");
                out.println("                 <button class=\"btn btn-outline-black decrease\" type=\"button\">&minus;</button>  ");
               out.println("                </div>  ");
                out.println("               <input type=\"text\" id = \""+ partnumner +"_" +"text_add"+"\"  class=\"form-control text-center quantity-amount\" value= "+ remove+" readonly  style=\"width: 40px;\"  >  ");
		
               out.println("                <div class=\"input-group-append\">  ");
               out.println("                  <button class=\"btn btn-outline-black increase\" type=\"button\">&plus;</button>   ");
               out.println("                </div>  ");
                out.println("             </div>  ");
        
               out.println("            </td>   ");
	       
	       
	       out.println(" 	  <td> " +  "<div class= \"col-md-6\"> <button id = \"   "+ partnumner +"_" +userd +"    \" onClick = \"GFG_CLICKS(this.id)\"  class=\"btn btn-outline-black btn-sm btn-block\">Add</button>  </div>" +  "</td>  ");
	    }
	    
	       
	       
          	    if(aList.contains(partnumner) != true){
			  aList.add(partnumner);
	    
	   
	        }  
	       
		//out.println(" </form>  ");
		
		out.println("      </tr>  ");
		  
		  
		
	
	    
	    
	    
	    
		
	    
	  }
	  
	  out.println(" </tbody>  ");
	  
	  out.println("  </table> ");
	  
	  out.println("  </div>");
	 
	  out.println("    </div> ");
	  
	
         
	 
         preparedStatement.close();
         c.close();
	
      } catch ( Exception e ) {
	out.println( e.getClass().getName()+": "+ e.getMessage() +" from way down " );
         
      }
      
      //End to connect to a database
      
      
 
  %>
    
              
        
              <div class="row">
                <div class="col-md-6">
                  <div class="row mb-5">
                    <div class="col-md-6 mb-3 mb-md-0">
                      
                    </div>
                    <div class="col-md-6">
                      
                    </div>
                  </div>
		  
		  
		  <form  name="myform"  action="cart.jsp" class="row g-3" method="POST"  >
                  <div class="row">
                    <div class="col-md-12">
                      <label class="text-black h4" for="coupon">Search</label>
                      <p>Enter Device Name</p>
                    </div>
                    <div class="col-md-8 mb-3 mb-md-0">
                      <input type="text" class="form-control py-3" id="coupon" placeholder="Device Name" name="search_string"/>
		      
			
                    </div>
                    <div class="col-md-4">
                      <button class="btn btn-black">Search </button>
                    </div>
                  </div>
		  
		  </form>
                </div>
		
                
        
                      
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
		

	

		<script src="js/bootstrap.bundle.min.js"></script>
		<script src="js/tiny-slider.js"></script>
		<script src="js/custom.js"></script>
		
		<% 
		
		  } // End to if username != null 
   
   else{
     out.println( "Please login  " );
     }
		%>
	</body>

</html>
