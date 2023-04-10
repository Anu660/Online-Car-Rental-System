
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CAR Details</title>     
         <link rel="icon" href="https://img.icons8.com/external-itim2101-lineal-color-itim2101/50/000000/external-car-automotive-itim2101-lineal-color-itim2101-1.png">
    </head>
    <body>
        <%@include file="Admin_header.jsp" %>
                 <div class="container-fluid">
        <div class="container">
            <h3>Car Details</h3>
            <br>
       
            <div class="row">
                <div class="col-sm-6">
            <label>Id</label>
            <input type="text" name="id" id="id" placeholder="Id" class="form-control">
            
        </div>
              <div class="col-sm-6">
            <label>Contact</label>
            <input type="text" name="contact" id="contact" class="form-control">
           
            
        </div>
                
            </div>
                 <br>
            
        <div class="row">
        <div class="col-sm-6">
            
             <label>Customer Name</label>
             <input type="text" class="form-control" name="name" id="name" placeholder="Customer Name" required="">
        </div>
        <div class="col-sm-6">
           <label>Email</label>
            <input type="text" class="form-control" name="email" id="email" placeholder="Email"  required="">
        </div>
       
        </div>
            <br>
            <div class="row">
        <div class="col-sm-6">
            
             <label>Car Name</label>
             <input type="text"   placeholder="Car name" id="carname" class="form-control" required="" >
           
        </div>
        <div class="col-sm-6">
           <label>Brand</label>
             <input type="text" class="form-control" name="brand" id="brand" placeholder="Brand" required="" >
        </div>
       
        </div>
            <br>
            <div class="row">
        <div class="col-sm-6">
            
            <label>Model</label>
            <input type="text" class="form-control" name="model" id="model" placeholder="Model" required="" >
        </div>
        <div class="col-sm-6">
           <label>Vehicle No</label>
            <input type="text" class="form-control" name="vehicleno" id="vehicleno" placeholder="Vehicle No" required="">
        </div>
       
        </div>
            <br>
            <div class="row">
        <div class="col-sm-6">
            
             <label>To</label>
             <input type="text" name="to" class="form-control" id="to" placeholder="To">
                 
        </div>
        <div class="col-sm-6">
           <label>From</label>
           <input type="text" name="from" placeholder="From" class="form-control" id="from">
                 
        </div>
       
        </div>
                
            <br>
            <div class="row">
        <div class="col-sm-6">
            <label>Total</label>
            <input name="total" class="form-control" placeholder="Total"  id="total">
                
           
        </div>
                 <div class="col-sm-6">
            <label>Status</label>
            <select name="Status" class="form-control" id="status">
                 <option>Confirm</option>
                  <option>Decline</option>
             </select>           
        </div>
                
            </div>

            <br>
        <div class="row">
        <div class="col-sm-12">

            <input type="button" class="btn btn-info" name="btn" value="Submit" onclick="myUpdate()">
            
       
        </div>
        
        </div>
                
        </div>
          </div>
            
<script src="https://www.gstatic.com/firebasejs/8.1.1/firebase-app.js"></script>	 
<script src="https://www.gstatic.com/firebasejs/8.1.1/firebase-database.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.1.1/firebase-storage.js"></script>

<script>
document.getElementById("id").value=localStorage.getItem("childKey");
document.getElementById("name").value=localStorage.getItem("customer_name");
document.getElementById("contact").value=localStorage.getItem("contact");
document.getElementById("email").value=localStorage.getItem("email");
document.getElementById("carname").value=localStorage.getItem("car_name");
document.getElementById("brand").value=localStorage.getItem("brand");
document.getElementById("model").value=localStorage.getItem("model");
document.getElementById("vehicleno").value=localStorage.getItem("vno");
document.getElementById("to").value=localStorage.getItem("to");
document.getElementById("from").value=localStorage.getItem("from");
document.getElementById("total").value=localStorage.getItem("total");
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




//insert code
  function myUpdate()
  {
let ids=document.getElementById("id").value;
let name=document.getElementById("name").value;
let contact=document.getElementById("contact").value;
let email=document.getElementById("email").value;
let carname=document.getElementById("carname").value;
let brand=document.getElementById("brand").value;
let model=document.getElementById("model").value;
let vehicleno=document.getElementById("vehicleno").value;
let to=document.getElementById("to").value;
let from=document.getElementById("from").value;
let total=document.getElementById("total").value;
  if (ids == "") 
      {
          alert("Id Filds is empty");        
      }
  else if(name == "")
      {
          alert("Name Filds is empty");
          
      }
  else if(contact == "")
      {
          alert("contact Filds is empty");
          
      }
  else if(email == "")
      {
          alert("email Filds is empty");
          
      }
  else if(carname == "")
      {
          alert("carname no Filds is empty");
          
      }
  else if(brand == "")
      {
          alert("brand Filds is empty");
          
      }
  else if(model == "")
      {
          alert("model Filds is empty");
          
      }
  else if(vehicleno == "")
      {
          alert("vehicleno Filds is empty");
          
      }
  else if(to == "")
      {
          alert("to Filds is empty");
          
      }
  else if(from == "")
      {
          alert("to Filds is empty");
          
      }
  else if(total == "")
      {
          alert("total Filds is empty");
          
      }
      else
          {
  
  
  let id = document.getElementById("id").value; 
  let data = {};

  data["customer_name"] = document.getElementById("name").value;
  data["contact"] = document.getElementById("contact").value;
  data["email"] = document.getElementById("email").value;
  data["car_name"] = document.getElementById("carname").value;
  data["brand"] = document.getElementById("brand").value;
  data["model"] = document.getElementById("model").value;
  data["vno"] = document.getElementById("vehicleno").value;
  data["to"] = document.getElementById("to").value;
  data["from"] = document.getElementById("from").value;
  data["total"] = document.getElementById("total").value;
  data["status"] = document.getElementById("status").value;
 
     
    firebase.database().ref('Payment/'+id).update(data,function(error) {
                if (error) {
                  // The write failed...
                  console.log(error);
                } else {            
                    alert("Updated Successfuly");
                    location.reload();
                  // Data saved successfully!
                }
              });
   }
  }			  
</script>
      
    </body>
</html>
