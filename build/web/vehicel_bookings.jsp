<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Booking</title>
         <link rel="icon" href="https://img.icons8.com/external-itim2101-lineal-color-itim2101/50/000000/external-car-automotive-itim2101-lineal-color-itim2101-1.png">
    </head>
    <body>
        <%@include file="Admin_header.jsp" %>
        <div class="jumbotron">
        <div class="well">
            <h3>Confirm Bookings</h3>
            <br>
             <table class="table">
  <thead class="thead-dark">
      <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Contact</th>
<!--  <th scope="col">Email</th>-->
      <th scope="col">Car name</th>
      <th scope="col">Brand</th>
      <th scope="col">Model</th>
      <th scope="col">No</th>
      <th scope="col">To</th>
      <th scope="col">Form</th>
      <th scope="col">Total</th>
      <th scope="col">Status</th>
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
  	firebase.database().ref('Payment').once('value',function(snapshot){
  		snapshot.forEach(
  			function(CurrentRecords){
                             
                                var childKey = CurrentRecords.key;
                         
  				var customer_name=CurrentRecords.val().customer_name;
  				var contact=CurrentRecords.val().contact;
                                var email=CurrentRecords.val().email;
                                var car_name=CurrentRecords.val().car_name;
  				var brand=CurrentRecords.val().brand;
                                var model=CurrentRecords.val().model;
                                var vno=CurrentRecords.val().vno;
                                var to=CurrentRecords.val().to;
                                var from=CurrentRecords.val().from;
                                var total=CurrentRecords.val().total;
                                var status=CurrentRecords.val().status;
  				
  				AdditemsToTable(childKey,customer_name,contact,email,car_name,brand,model,vno,to,from,total,status);
  			}

  			);

  	});
  }

  window.onload=selectallrecords;

  var id=1;
 
  function AdditemsToTable(childKey,customer_name,contact,email,car_name,brand,model,vno,to,from,total,status){
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
  	
      
    t1.innerHTML=id++;
    t2.innerHTML=customer_name;
    t3.innerHTML=contact;
    t4.innerHTML=email;
    t5.innerHTML=car_name;
    t6.innerHTML=brand;
    t7.innerHTML=model;
    t8.innerHTML=vno;
    t9.innerHTML=to;
    t10.innerHTML=from;
    t11.innerHTML=total;
    t12.innerHTML=status;

  	trow.appendChild(t1);
        trow.appendChild(t2);
        trow.appendChild(t3);
  	//trow.appendChild(t4);
        trow.appendChild(t5);
        trow.appendChild(t6);
        trow.appendChild(t7);
        trow.appendChild(t8);
        trow.appendChild(t9);
        trow.appendChild(t10);
        trow.appendChild(t11);
        trow.appendChild(t12);
           
  	var ControlDiv=document.createElement("div");
        
        ControlDiv.innerHTML='<button type="button" class="btn btn-info" onclick="senddata(\'' + childKey + '\',\'' + customer_name + '\','+contact+',\'' + email + '\',\'' + car_name + '\',\'' + brand + '\',\'' + model + '\',\'' + vno + '\',\'' + to + '\',\'' + from + '\',\'' + total + '\')">✍</button>';
  	trow.appendChild(ControlDiv);
        
        var ControlDiv=document.createElement("div");
        ControlDiv.innerHTML='<button type="button" class="btn btn-danger"  onclick="loaddelete(\'' + childKey + '\')">✘</button>';
        
  	trow.appendChild(ControlDiv);
        tbody.appendChild(trow);
        
  }
  
  function loaddelete(childkey) {
  var fdb = firebase.database().ref("Payment");
  if(confirm('Are you sure?')){
    firebase.database().ref('Payment/'+childkey)
      .remove()                                 
      .then(function() {                       
        location.reload();         
      });
  }   
  }
  
  
  function senddata(childKey,customer_name,contact,email,car_name,brand,model,vno,to,from,total) {

   localStorage.setItem('childKey', childKey);
   localStorage.setItem('customer_name', customer_name);
   localStorage.setItem('contact', contact);
   localStorage.setItem('email', email);
   localStorage.setItem('car_name', car_name);
   localStorage.setItem('brand', brand);
   localStorage.setItem('model', model);
   localStorage.setItem('vno', vno);
   localStorage.setItem('to', to);
   localStorage.setItem('from', from);
   localStorage.setItem('total', total);
   window.location='confirm_bookings.jsp';

  }
</script>
    </body> 
</html>
