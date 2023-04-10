
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
              <div class="col-sm-4">
            <label>Image</label>
            <input type="file" name="photo" id="photo" class="form-control">
            <input type="hidden"
           name="image"
           id="image"> 
            
        </div>
                <div class="col-sm-2">
                    <br>
                    <input type="button" class="btn btn-info" name="btn" value="Upload File" onclick="uploadImage()" style="width: 158px">
                </div>
            </div>
                 <br>
            
        <div class="row">
        <div class="col-sm-6">
            
             <label>Name</label>
             <input type="text" class="form-control" name="name" id="name" placeholder="Car Name" onkeypress="javascript:return isString(event)" required="">
        </div>
        <div class="col-sm-6">
           <label>Model</label>
            <input type="text" class="form-control" name="model" id="model" placeholder="Model"  onkeypress="javascript:return isAlphanumric(event)" required="">
        </div>
       
        </div>
            <br>
            <div class="row">
        <div class="col-sm-6">
            
             <label>Brand</label>
<!--             <input type="text"   placeholder="brand" required="" onkeypress="javascript:return isString(event)">-->
             <select name="Brand" id="brand" class="form-control">
                
             </select>
        </div>
        <div class="col-sm-6">
           <label>Vehicle no</label>
             <input type="text" class="form-control" name="vehicleno" id="vehicleno" placeholder="Vehicle no" required="" onkeypress="javascript:return isAlphanumric(event)">
        </div>
       
        </div>
            <br>
            <div class="row">
        <div class="col-sm-6">
            
            <label>Seats</label>
            <input type="text" class="form-control" name="seat" id="seat" placeholder="Seats" required="" onkeypress="javascript:return isNumber(event)">
        </div>
        <div class="col-sm-6">
           <label>Price</label>
            <input type="text" class="form-control" name="price" id="price" placeholder="Price" required="" onkeypress="javascript:return isFloat(event)">
        </div>
       
        </div>
            <br>
            <div class="row">
        <div class="col-sm-6">
            
             <label>Fuel</label>
             <select name="fuel" class="form-control" id="fuel">
                 <option>Disel</option>
                  <option>Petrol</option>
             </select>
        </div>
        <div class="col-sm-6">
           <label>Air bag</label>
             <select name="airbag" class="form-control" id="airbag">
                 <option>Yes</option>
                  <option>No</option>
             </select>
        </div>
       
        </div>
                
            <br>
            <div class="row">
        <div class="col-sm-6">
            <label>Status</label>
            <select name="status" class="form-control" id="status">
                 <option>Active</option>
                  <option>Inactive</option>
             </select>
            
        </div>
                 <div class="col-sm-6">
            <label>Category</label>
            <select name="category" class="form-control" id="category">
                 <option>Two Wheeler</option>
                  <option>Four Wheeler</option>
             </select>
            
        </div>
                
            </div>
            
            
            <br>
        <div class="row">
        <div class="col-sm-12">
            
      
           
            <input type="button" class="btn btn-info" name="btn" value="Submit" onclick="myInsert()">
            <input type="button" class="btn btn-success" name="btn" value="Update" onclick="myUpdate()">
            
            
        </div>
        
        </div>
                
        </div>
                 </div>
            
<script src="https://www.gstatic.com/firebasejs/8.1.1/firebase-app.js"></script>	 
<script src="https://www.gstatic.com/firebasejs/8.1.1/firebase-database.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.1.1/firebase-storage.js"></script>

<script>
   // document.getElementById("price").value = localStorage.getItem("programming");
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
var url="";

//insert code
  function myInsert()
  {
            let ids = document.getElementById("id").value;          
            let image = document.querySelector("#image").src;
            let name = document.getElementById("name").value;
            let model = document.getElementById("model").value;
            let vehicleno = document.getElementById("vehicleno").value;
            let seat = document.getElementById("seat").value;
            let price = document.getElementById("price").value;
            
  if (ids == "") 
      {
          alert("Id Filds is empty");        
      }
  else if(name == "")
      {
          alert("Name Filds is empty");
          
      }
  else if(image == "")
      {
          alert("Image Filds is empty plz.. uplaod image");
          
      }
  else if(model == "")
      {
          alert("Model Filds is empty");
          
      }
  else if(vehicleno == "")
      {
          alert("Vehicle no Filds is empty");
          
      }
  else if(seat == "")
      {
          alert("Seat Filds is empty");
          
      }
  else if(price == "")
      {
          alert("Price Filds is empty");
          
      }
      else
          {
  
  
  let id = document.getElementById("id").value; 
  let data = {};

  data["image"] = document.querySelector("#image").src;
  data["name"] = document.getElementById("name").value;
  data["model"] = document.getElementById("model").value;
  data["brand"] = document.getElementById("brand").value;
  data["vehicleno"] = document.getElementById("vehicleno").value;
  data["seat"] = document.getElementById("seat").value;
  data["price"] = document.getElementById("price").value;
  data["fuel"] = document.getElementById("fuel").value;
  data["airbag"] = document.getElementById("airbag").value;
  data["status"] = document.getElementById("status").value;
  data["category"] = document.getElementById("category").value;
 
  
        
    firebase.database().ref('cardetails/'+id).set(data,function(error) {
                if (error) {
                  // The write failed...
                  console.log(error);
                } else {            
                    alert("Car Details Added Successfuly");
                    location.reload();
                  // Data saved successfully!
                }
              });
}
  }
  

//Update code
function myUpdate()
  {
  
  let id = document.getElementById("id").value;
  
  let data = {};

  data["image"] = document.getElementById("image").value;
  data["name"] = document.getElementById("name").value;
  data["model"] = document.getElementById("model").value;
  data["brand"] = document.getElementById("brand").value;
  data["vehicleno"] = document.getElementById("vehicleno").value;
  data["seat"] = document.getElementById("seat").value;
  data["price"] = document.getElementById("price").value;
  data["fuel"] = document.getElementById("fuel").value;
  data["airbag"] = document.getElementById("airbag").value;
  data["status"] = document.getElementById("status").value;
  data["category"] = document.getElementById("category").value;
  
    firebase.database().ref('cardetails/'+id).update(data,function(error) {
                if (error) {
                  // The write failed...

                  console.log(error);
                } else {

                                       
                    alert("Car Details Updated Successfuly");
                  // Data saved successfully!
                }
              });
}




 //uploading file in storage
  function uploadImage() {
     
      
        const ref = firebase.storage().ref('Images');
      
      const file = document.querySelector("#photo").files[0];
      const name = +new Date() + "-" + file.name;
      const metadata = {
        contentType: file.type
      };
      const task = ref.child(name).put(file, metadata);
      task
        .then(snapshot => snapshot.ref.getDownloadURL())
        .then(url => {
          console.log(url);
          alert("Upload successfuly");
          document.querySelector("#image").src = url;
          
        })
        .catch(console.error);

    }
   
 //serach data dyanmic 
  var ref = firebase.database().ref("brands");

  ref.on("value", function(snapshot) {
  snapshot.forEach(function(childSnapshot) {
  var childData = childSnapshot.val();
  var brand=childData.brand;
  console.log(brand);
 
   $('#brand').append(new Option(brand, brand));
 });
});
 

var ref = firebase.database().ref("cardetails");
  ref.on("value", function(snapshot) {
  snapshot.forEach(function(childSnapshot) {
  var childData = childSnapshot.val();
  var brand=childSnapshot.key;
  
   var id=parseInt(brand)+1;
   console.log(id);
   //$('#brand').append(new Option(brand, brand));
   document.getElementById("id").value=id;
 });
});

	  
			  
</script>
      
    </body>
</html>
