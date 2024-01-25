
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


  alert("Hello there GFG");
  
   //window.location.replace("http://15.45.21.246:8080/fumi/test.jsp"); 
   
  window.location.assign("http://15.45.21.246:8080/fumi/remove.jsp"); 
  
  // use to prevent going back in history
  // window.location.replace('https://www.exampleURL.com/');
  
  
  
  }



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
						<li><a class="nav-link" href="contact.jsp">Add</a></li>
						<li><a class="nav-link" href="shift_report.jsp">Daily Report</a></li>
						<li><a class="nav-link" href=" ">Table Display</a></li>
						
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

	// Function to modify or replace string
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
 
    
    return ans;
    
    
  } // modifyString
  
  // Function to decide if remove string should show
//   List aList = new ArrayList();
   
  
  
	%>


<% 
	String user_name =  (String)session.getAttribute("user_name");
	String user_password = (String)session.getAttribute("password");
	
	// out.println( "user name: "+user_name +" and password: "+(String)session.getAttribute("password")  ); 
	
	out.println( "Hello user: "+user_name  ); 
	
	Cookie firstName = new Cookie("username", user_name  );
	 firstName.setMaxAge(60*60*24); 
	 response.addCookie( firstName );
	 
	
	if( user_name  != null){
	  
	    
	
	  
	 
	
%>
	
	 
              
                    

  <%@page import="java.sql.*" %>
  <% 
  // To connect to the database
  
  // Load postgresql Driver. The jar file was downloaded and placed in the lib folder of tomcat server
  
  try {
  Class.forName("org.postgresql.Driver"); 
  }
  catch(Exception e){out.println( e.getClass().getName()+": "+ e.getMessage() );
    }
  
  // Database logic
  
  String search_date = request.getParameter("search_date");
  String shift  = request.getParameter("shift");
  //shift = "afternoon_shift"; // create drop-down entry for shift
  
  
    
    String query1 = "";
    
    if( search_date == null ){
      query1 = " select distinct on (machine) * from shift_report   order by machine, id DESC LIMIT 30 ";
    }
    
    else{
    
    query1 = " select distinct on (machine) * from shift_report where dated = ? and  shift = ? order by machine, id DESC";
    }
    

    Connection c = null;
    Statement stmt = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;
    
    	
    
      try {
         Class.forName("org.postgresql.Driver");
      
c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/sewa", "tyui_1", "jigger");
         
         
	 preparedStatement = c.prepareStatement(query1);
	 
	 if( search_date != null){
	preparedStatement.setString(1, search_date );
	
	preparedStatement.setString(2, shift); 
	
       }
	
	 //String sql = query1 ;
	 
	resultSet = preparedStatement.executeQuery();
	
		
	out.println("  <div class=\"untree_co-section before-footer-section\"> <div class=\"container\"> ");
	out.println(" <div class=\"container\"> ");
	
             out.println("  <div class=\"row mb-5\"> ");
              //out.println("   <form class=\"col-md-12\" method=\"post\"  action=\"remove.jsp\"  onsubmit=\"return validateform()\" >");
	      
	      
                 out.println("  <div class=\"site-blocks-table\"> ");
                 
                 
                 // Table starts here
		    
                  out.println("   <table class=\"table\"> ");
                     out.println("  <thead> ");
                     out.println("    <tr> ");
                        out.println("   <th class=\"product-thumbnail\">Image</th> ");
                        out.println("   <th class=\"product-name\">Machine</th> ");
                        out.println("   <th class=\"product-price\">Description</th> ");
                        out.println("   <th class=\"product-quantity\">Output</th> ");
                         out.println("  <th class=\"product-total\">Remark</th> ");
			 out.println("   <th class=\"product-name\">Report Author</th> ");
                        out.println("   <th class=\"product-remove\">Shift</th> ");
			 out.println("  <th class=\"product-remove\">Date</th> ");
			 out.println("  <th class=\"product-remove\">Lost Hour</th> ");
			
			
                      out.println("   </tr> ");
                    out.println("   </thead> ");

		      out.println(" <tbody> ");


	ArrayList aList=new ArrayList();      
	 
	  while (resultSet.next()) {
	    
	   String machine = resultSet.getString("machine");
	  
	  
	   String description = resultSet.getString("description");
	   
	   String output_reams  = resultSet.getString("output_reams");
	   if(output_reams.isEmpty()){output_reams  = "0";}
	   
	   
	   
	   
	   String output_sheets = resultSet.getString("output_sheets");
	   if(output_sheets.isEmpty()){output_sheets  = "0";}
	   
	   
	   String output = output_reams +" rms "+output_sheets+ " shts";
	   
	   String remark = resultSet.getString("remark") ;
	    
	    
	   String names = resultSet.getString("names");
	   String  shifts = resultSet.getString("shift");
	   shifts = modifyString( shifts, "_*", " ");
	   
	   String dated = resultSet.getString("dated") ;
	   
	   
	   String lost_hour = resultSet.getString("lost_hour");
	   if(lost_hour.isEmpty() ){lost_hour  = "0";}
	   
	
	   
	   String partnumner = "as";

	   
	   String remove = "0";
	   

	    
	  
	
	    
	    
                   out.println("      <tr>  ");
		
		   //out.println( " <form action = \"remove2.jsp\" method = \"POST\" onsubmit= \"return wilson()\" >  ");
		   
               out.println("            <td class=\"product-thumbnail\">  ");
	        out.println("       <img src=\"images/product-1.png\" alt=\"Image\" class=\"img-fluid\">  ");
                      out.println("     </td>  ");
                      out.println("     <td class=\"product-name\">  ");
                      out.println("       <h2 class=\"h5 text-black\" <label  id = \""+ partnumner +"_" +"devicename" +"\"  > "+machine +" </label>  </h2>  ");
                    out.println("       </td>  ");
                      out.println("     <td> "+description +"</td>  ");
		out.println(" 	  <td>" +output + " </td>  ");
		out.println(" 	  <td> "+remark+ " </td>  ");
		out.println(" 	  <td <label  id = \""+ partnumner +"_description"  +"\">" +names + " </label> </td>  ");
		out.println(" 	  <td> " +shifts  +"</td>  ");
		out.println(" 	  <td> " +dated +"</td>  ");
			
		
		out.println(" 	  <td <label  id = \""+ partnumner +"_store"  +"\">" +lost_hour+ " </label> </td>  ");
		  
		
		out.println("      </tr>  ");
		  
		  
		
	
	    
	    
	    
	    
		
	    
	  }
	  
	  out.println(" </tbody>  ");
	  
	  out.println("  </table> ");
	  
	  out.println("  </div>");
	 
	  out.println("    </div> ");
	  
	
         
	 
         preparedStatement.close();
         c.close();
	
      } catch ( Exception e ) {
	out.println( e.getClass().getName()+": "+ e.getMessage() );
         
      }
      
      //End to connect to a database
      
      
 
  %>
    
      <%@ page import="java.time.LocalDate" %>
      
      <% LocalDate myObj = LocalDate.now(); // Create a date object 
      
      %>
              
        
              <div class="row">
                <div class="col-md-6">
                  
		  
		  
		  <form  name="myform"  action="table_display.jsp" class="row g-3" method="POST"  >
                  <div class="row">
                    <div class="col-md-12">
                      <label class="text-black h4" for="coupon">Search</label>
                      <p>Enter a date to search shift report</p>
                    </div>
                    <div class="col-md-8 mb-3 mb-md-0">
                     
		      <input type="date" class="form-control py-3"  id="today"  style="width: 200px;" name="search_date"   value=<% out.println("\""+myObj+"\""); %> > 
		      
		      <div class="form-group">
                  <label class="text-black" for="email">Shift</label>

		
		    <select name="shift"    class="form-control"> 
		    <option value="morning_shift">Morning Shift </option> 
		    <option value="afternoon_shift">Afternoon Shift</option> 
		    <option value="night_shift">Night Shift</option> 
		   
		    </select>
                </div>
		  
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
