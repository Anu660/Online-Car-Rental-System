
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Brands</title>
         <link rel="icon" href="https://img.icons8.com/external-itim2101-lineal-color-itim2101/50/000000/external-car-automotive-itim2101-lineal-color-itim2101-1.png">
        
    </head>
    <body>
        <%@include file="Admin_header.jsp" %>
        
        <div class="row">
            <div class="col-sm-3"></div>
             <div class="col-sm-6">
       <div class="container-fluid">
        <div class="container">
            <form>
            <h3>Add Brands</h3>
            <br>
             <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <label>Id</label>
            <input type="text" class="form-control" id="id" name="id" placeholder="Id" required="" >
        </div>
        <div class="col-sm-2"></div>
        </div>
            <br>
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <label>Brand Name</label>
            <input type="text" class="form-control" id="brand" name="brand" placeholder="Brand name" required="" onkeypress="javascript:return isString(event)">
        </div>
        <div class="col-sm-2"></div>
        </div>
            <br>
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-5">
            <label>Image</label>
            <input type="file" class="form-control" id="photo" name="photo"  required="">
            <input type="hidden" name="image" id="image"> 
            
        </div>
        <div class="col-sm-3">
            <br>
            <input type="button" class="btn btn-info" style="width: 120px" name="btn" onclick="uploadImage()" value="Upload">
        </div>
        <div class="col-sm-2"></div>
        </div>
            <br>
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <label>Description</label>
            <textarea  class="form-control" id="descr" name="description"  required=""></textarea>
            
            
        </div>
        <div class="col-sm-2"></div>
        </div>
            <br>
        
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            
            <input type="button" class="btn btn-info" name="btn" value="Save" onclick="myInsert()">
            <input type="button" class="btn btn-success" name="btn" onclick="myUpdate()" value="Update">
            
            
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
        </form>
        </div>
       </div>
            <div class="col-sm-3"></div>
            </div>
        </div>
           
        
        
<script src="https://www.gstatic.com/firebasejs/8.1.1/firebase-app.js"></script>	 
<script src="https://www.gstatic.com/firebasejs/8.1.1/firebase-database.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.1.1/firebase-storage.js"></script>

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
var url="";
  function myInsert()
  {
      
            let ids = document.getElementById("id").value;
            let brand = document.getElementById("brand").value;
            let image = document.querySelector("#image").src;
            let descr = document.getElementById("descr").value;
  if (ids == "") 
      {
          alert("Id Filds is empty");        
      }
  else if(brand == "")
      {
          alert("Brand Filds is empty");
          
      }
  else if(image == "")
      {
          alert("Image Filds is empty plz.. uplaod image");
          
      }
  else if(descr == "")
      {
          alert("Descr Filds is empty");
          
      }
      else
          {
  
  
  let id = document.getElementById("id").value;
  let data = {};

  data["brand"] = document.getElementById("brand").value;
  data["image"] = document.querySelector("#image").src;
  data["Description"] = document.getElementById("descr").value;
  
 
  
    firebase.database().ref('brands/'+id).set(data,function(error) {
                if (error) {
                  // The write failed...

                  console.log(error);
                } else {

                                       
                    alert("Brand Added Successfuly");
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


  data["brand"] = document.getElementById("brand").value;
  data["image"] = document.getElementById("image").value;
  data["Description"] = document.getElementById("descr").value;
  
  firebase.database().ref('brands/'+id).update(data,function(error) {
                if (error) {
                  // The write failed...

                  console.log(error);
                } else {

                                       
                    alert("Brand Updated Successfuly");
                  // Data saved successfully!
                }
              });
}


//function myDelete()
//  {
//  
//  let id = document.getElementById("id").value;
//  
//  let data = {};
////  data["brand"] = document.getElementById("brand").value;
////  data["image"] = document.getElementById("image").value;
////  data["Description"] = document.getElementById("descr").value;
//  
// 
//  
//    firebase.database().ref('brands/'+id).remove(function(error) {
//                if (error) {
//                  // The write failed...
//
//                  console.log(error);
//                } else {
//
//                                       
//                    alert("Brand Deleted Successfuly");
//                  // Data saved successfully!
//                }
//              });
//}	


function uploadImage() {
     
      
        const ref = firebase.storage().ref('Brand');
      
      const file = document.querySelector("#photo").files[0];
      const name = +new Date() + "-" + file.name;
      const metadata = {
        contentType: file.type
      };
      const task = ref.child(name).put(file, metadata);
      task.then(snapshot => snapshot.ref.getDownloadURL()).then(url => {
          console.log(url);
          alert("Upload successfuly");
          document.querySelector("#image").src = url;
        })
        .catch(console.error);
        
      
    }
    
      var ref = firebase.database().ref("brands");
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
