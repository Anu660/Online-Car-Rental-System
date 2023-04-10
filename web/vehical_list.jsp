<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vehical list</title>
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
       
        <div class="jumbotron">
            <h3>Vehical List</h3>
            <br>
             <table class="table">
  <thead class="thead-dark">
      <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Model</th>
      <th scope="col">Brand</th>
      <th scope="col">Vehicle No</th>
      <th scope="col">Seat</th>
      <th scope="col">Price</th>
      <th scope="col">Fuel</th>
<!--      <th scope="col">Airbag</th>-->
      <th scope="col">Status</th>
      <th scope="col">Category</th>
        <th scope="col">Image</th>
      <th scope="col">Trash</th>
    </tr>
  </thead>
  <tbody id="tbody1">
      
    <tr>
  
     
      
    </tr>
    
  
  </tbody>
</table>
       
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
  	firebase.database().ref('cardetails').once('value',function(snapshot){
  		snapshot.forEach(
  			function(CurrentRecords){
                             
                                var childKey = CurrentRecords.key;
                               
  				var Airbag=CurrentRecords.val().airbag;
  				var Brand=CurrentRecords.val().brand;
  				var Category=CurrentRecords.val().category;
                                var Fuel=CurrentRecords.val().fuel;
                                var Image=CurrentRecords.val().image;
                                var Model=CurrentRecords.val().model;
                                var Name=CurrentRecords.val().name;
                                var Price=CurrentRecords.val().price;
                                var Seat=CurrentRecords.val().seat;
                                var Status=CurrentRecords.val().status;
                                var Vehicleno=CurrentRecords.val().vehicleno;
  				
  				AdditemsToTable(childKey,Airbag,Brand,Category,Fuel,Image,Model,Name,Price,Seat,Status,Vehicleno);
  			}

  			);

  	});
  }

  window.onload=selectallrecords;

  var id=1;
  function AdditemsToTable(childKey,Airbag,Brand,Category,Fuel,Image,Model,Name,Price,Seat,Status,Vehicleno){
  	var tbody =document.getElementById("tbody1");
  	var trow =document.createElement("tr");
  	var t1 =document.createElement("td");
  	var t2 =document.createElement("td");
  	var t3 =document.createElement("td");
        var t4 =document.createElement("td");
        var t5 =document.createElement("td");
        var t6 =document.createElement("td");
        var t7 =document.createElement("td");
        var t8 =document.createElement("td");
        var t9 =document.createElement("td");
        var t10 =document.createElement("td");
        var t11 =document.createElement("td");
        var t12 =document.createElement("td");
  	

    t1.innerHTML=childKey;
   // t2.innerHTML=Airbag;
    t3.innerHTML=Brand;
    t4.innerHTML=Category;
    t5.innerHTML=Fuel;
    t6.innerHTML="<img src='"+Image+"'>";
    t7.innerHTML=Model;
    t8.innerHTML=Name;
    t9.innerHTML=Price;
    t10.innerHTML=Seat;
    t11.innerHTML=Status;
    t12.innerHTML=Vehicleno;
    
    

  	trow.appendChild(t1);
        trow.appendChild(t8);  
        trow.appendChild(t7);
        trow.appendChild(t3);
        trow.appendChild(t12);
        trow.appendChild(t10);
        trow.appendChild(t9);
        trow.appendChild(t5);
        //trow.appendChild(t2);
        trow.appendChild(t11);
        trow.appendChild(t4);
        
        trow.appendChild(t6)
        
        
        
        
  	var ControlDiv=document.createElement("div");
        
        ControlDiv.innerHTML='<button type="button" class="btn btn-danger my-2" data-toggle="model" id="" onclick="loaddelete('+childKey+')">✘</button>';
        
  	trow.appendChild(ControlDiv);
        tbody.appendChild(trow);
        
        

  }
  
  
  function loaddelete(childKey) {
  var fdb = firebase.database().ref();
  if(confirm('Are you sure?')){
    firebase.database().ref('cardetails/'+childKey) 
      .remove()                               
      .then(function() {                       
        location.reload();        
      });
  }
 }
</script>
        
    </body>
</html>
