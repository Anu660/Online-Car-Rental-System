<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Register</title>
         <link rel="icon" href="https://img.icons8.com/external-itim2101-lineal-color-itim2101/50/000000/external-car-automotive-itim2101-lineal-color-itim2101-1.png">
        
        
    </head>
    <body>
        <%@include file="mainpage.jsp" %>
      
        <div class="row">  
            <div class="col-sm-3"></div>
             <div class="col-sm-6">
                 <div class="container-fluid">
        <div class="container">
            <h3>Admin Register</h3>
            <br>
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <label>Name</label>
            <input type="text" class="form-control" name="name" id="name" placeholder="Name" onkeypress="javascript:return isString(event)" required=""> 
        </div>
        <div class="col-sm-2"></div>
        </div>
           
            <br>
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <label>Email id</label>
            <input type="email" class="form-control" name="email" id="email" placeholder="Email id" required="">
        </div>
        <div class="col-sm-2"></div>
        </div>
            <br>
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <label>Password</label>
            <input type="password" class="form-control" name="password" id="password" placeholder="Password" required="">
        </div>
        <div class="col-sm-2"></div>
        </div>
            <br>
        
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            
            <input type="submit" class="btn btn-info btn-block col-12" name="btn" value="Signin" onclick="mySignup()">
            
        </div>
        <div class="col-sm-2"></div>
        </div>
                <br>
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            
            <input type="submit" class="btn btn-danger btn-block col-12" name="btn" value="Cancel">
            
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
         <script src="https://www.gstatic.com/firebasejs/8.1.1/firebase-auth.js"></script>

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
  
  const auth=firebase.auth();

  function mySignup()
  {
      var email=document.getElementById("email").value;
      var password=document.getElementById("password").value;
     
      
      const loginData=auth.createUserWithEmailAndPassword(email,password);
      loginData.catch(e => alert(e.message));
     alert("signup");
  }


  


  


	  
			  
</script>
    </body>
</html>