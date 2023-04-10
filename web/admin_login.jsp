

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
         <link rel="icon" href="https://img.icons8.com/external-itim2101-lineal-color-itim2101/50/000000/external-car-automotive-itim2101-lineal-color-itim2101-1.png">
       
    </head>
    <body>
        <%@include file="mainpage.jsp" %>

        <div class="row">
            <div class="col-sm-3"></div>
             <div class="col-sm-6">
                 <div class="container-fluid">
        <div class="container">
            <h3>Admin Login</h3>
            <br>
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <label>Username</label>
            <input type="text" class="form-control" name="user" id="email" placeholder="Username" required="">
        </div>
        <div class="col-sm-2"></div>
        </div>
            <br>
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <label>Password</label>
            <input type="password" class="form-control" name="password" id="password" placeholder="Password" required="">
            <div class="row"><div class="col-sm-7"></div><div class="col-sm-5"><a href="forgot_password.jsp" style="color:blue">Forgot password</a></div></div>
        </div>
        <div class="col-sm-2"></div>
        </div>
            <br>
        
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            
       
              <input type="submit" class="btn btn-info btn-block col-12" name="btn" value="Login" onclick="mylogin()">
            
        </div>
        <div class="col-sm-2"></div>
        </div>
                <br>
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            
            <a href="adminregister.jsp" class="btn btn-danger btn-block col-12">Create a new account</a>
            
            
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

 
  
        function mylogin()
        {
            var email=document.getElementById("email").value;
            var password=document.getElementById("password").value;

            const loginData=auth.signInWithEmailAndPassword(email,password);
            loginData.catch(e => alert(e.message));
            if(loginData==true)
                {
                   alert("Sign in success");
                }
                else
                {
                   //alert("error");
                }


        }
  
        function mylogout()
        {
         auth.signOut();
         alert("Sign out user");
        } 
  
  
         auth.onAuthStateChanged(function(user){
         if(user)
         {
         var email=user.email;
         alert("User is active " +email);
          window.location.href="add_map.jsp";
         }
          else
         {
             alert("User not active");
         }
  
  });
  			  
</script>
    </body>
</html>
