<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Brand list</title>
         <link rel="icon" href="https://img.icons8.com/external-itim2101-lineal-color-itim2101/50/000000/external-car-automotive-itim2101-lineal-color-itim2101-1.png">
        <style>
            img 
            {
                height: 50px;
                width: 50px;
                
            }
        </style>
    </head>
    <body>
        <%@include file="Admin_header.jsp" %>
        <div class="container-fluid">
        <div class="container">
            <h3>Brand List</h3>
            <br>
             <table class="table">
  <thead class="thead-dark">
      <tr>
      <th scope="col">#</th>
      <th scope="col">Brand Name</th>
      <th scope="col">Image</th>
      <th scope="col">Description</th>
      <th scope="col">Action</th>
      
    </tr>
  </thead>
  <tbody id="tbody1">
    
    
  
  </tbody>
</table>
        </div>

        </div>
  
  
  <script src="https://www.gstatic.com/firebasejs/8.1.1/firebase-app.js"></script>	 
<script src="https://www.gstatic.com/firebasejs/8.1.1/firebase-database.js"></script>

<script>
  // Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyAb0EyYo_OE3RPgwQnSj0JQ5PJRzM0XNdY",
    authDomain: "carrental-74e95.firebaseapp.com",
    databaseURL: "https://carrental-74e95-default-rtdb.firebaseio.com",
    projectId: "carrental-74e95",
    storageBucket: "carrental-74e95.appspot.com",
    messagingSenderId: "1061412243459",
    appId: "1:1061412243459:web:1bf85252a8ead63222a636"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);





  function selectallrecords()
  {
  	firebase.database().ref('brands').once('value',function(snapshot){
  		snapshot.forEach(
  			function(CurrentRecords){
                             
                                var childKey = CurrentRecords.key;
                               
  				var Description=CurrentRecords.val().Description;
  				var Brand=CurrentRecords.val().brand;
  				var Image=CurrentRecords.val().image;
  				
  				AdditemsToTable(childKey,Description,Brand,Image);
  			}

  			);

  	});
  }

  window.onload=selectallrecords;

  var id=1;
  function AdditemsToTable(childKey,Description,Brand,Image){
  	var tbody =document.getElementById("tbody1");
  	var trow =document.createElement("tr");
  	var t1 =document.createElement("td");
  	var t2 =document.createElement("td");
  	var t3 =document.createElement("td");
        var t4 =document.createElement("td");
       // var t5 =document.createElement("td");
  	

    t1.innerHTML=id++;
    t2.innerHTML=Description;
    t3.innerHTML=Brand;
    t4.innerHTML="<img src='"+Image+"'>";
    

  	trow.appendChild(t1);
        trow.appendChild(t3);
  	trow.appendChild(t4);
        trow.appendChild(t2); 
        
  	
  	var ControlDiv=document.createElement("div");
        ControlDiv.innerHTML='<button type="button" class="btn btn-danger my-2" data-toggle="model" id="" onclick="loaddelete('+childKey+')">✘</button>';
        
  	trow.appendChild(ControlDiv);
        tbody.appendChild(trow);
        
        

  }
  
  
  
   function loaddelete(childKey) {
  var fdb = firebase.database().ref();
  if(confirm('Are you sure?')){
    firebase.database().ref('brands/'+childKey) 
      .remove()                               
      .then(function() {                       
        location.reload();        
      });
  }
 }
</script>
    </body>
</html>
