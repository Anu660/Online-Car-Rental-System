
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Map</title>
         <link rel="icon" href="https://img.icons8.com/external-itim2101-lineal-color-itim2101/50/000000/external-car-automotive-itim2101-lineal-color-itim2101-1.png">
        
    </head>
    <body>
        <%@include file="Admin_header.jsp" %>
      
        <div class="row">
            <div class="col-sm-3"></div>
             <div class="col-sm-6">
       <div class="container-fluid">
        <div class="container">
            <h3>Add Map</h3>
            <br>
             <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <label>Map id</label>
            <input type="text" class="form-control" name="id" id="id" placeholder="Id" required="" >
        </div>
        <div class="col-sm-2"></div>
        </div>
            <br>
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <label>From</label>
            <input type="text" class="form-control" name="from" id="form" placeholder="From" required="" onkeypress="javascript:return isString(event)">
        </div>
        <div class="col-sm-2"></div>
        </div>
            <br>
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <label>To</label>
            <input type="text" class="form-control" name="to" id="to"  placeholder="To" required="" onkeypress="javascript:return isString(event)">
            
            
        </div>
        <div class="col-sm-2"></div>
        </div>
            <br>
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <label>Description</label>
            <textarea  class="form-control" name="description" id="descr"  required=""></textarea>
            
            
        </div>
        <div class="col-sm-2"></div>
        </div>
            <br>
        
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            
            <input type="button" class="btn btn-info" name="btn" value="Save" onclick="myInsert()">
             <input type="submit" class="btn btn-success" name="btn" value="Update" onclick="myUpdate()">
            
        </div>
        <div class="col-sm-2"></div>
        </div>
                <br>
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            
           
            
        </div>
        <div class="col-sm-2"></div>
        </div>
        </div>
       </div>
            <div class="col-sm-3"></div>
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
 
   
      

  function myInsert()
  {
          
  let ids = document.getElementById("id").value;
            let form = document.getElementById("form").value;
            let to = document.getElementById("to").value;
            let descr = document.getElementById("descr").value;
  if (ids == "") 
      {
          alert("Id Filds is empty");
          
      }
  else if(form == "")
      {
          alert("form Filds is empty");
          
      }
  else if(to == "")
      {
          alert("To Filds is empty");
          
      }
  else if(descr == "")
      {
          alert("Descr Filds is empty");
          
      }
      else
          {
  
  let id = document.getElementById("id").value;
  let data = {}; 
  data["Form"] = document.getElementById("form").value;
  data["To"] = document.getElementById("to").value;
  data["Description"] = document.getElementById("descr").value;
 
  firebase.database().ref('maps/'+id).set(data,function(error) {
                if (error) {
                  // The write failed...

                  console.log(error);
                } else {

                                       
                    alert("Maps Added successfully");
                    location.reload();
                  // Data saved successfully!
                }
              });
  }
  }
  

  


function myUpdate()
  {
  
  let id = document.getElementById("id").value;
  let data = {};
  
  data["Form"] = document.getElementById("form").value;
  data["To"] = document.getElementById("to").value;
  data["Description"] = document.getElementById("descr").value;
  
  firebase.database().ref('maps/'+id).update(data,function(error) {
                if (error) {
                  // The write failed...

                  console.log(error);
                } else {

                                       
                    alert("Map Updated Successfuly");
                    location.reload();
                  // Data saved successfully!
                }
              });
 }
			  			  
  var ref = firebase.database().ref("maps");
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
