<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change password</title>
         <link rel="icon" href="https://img.icons8.com/external-itim2101-lineal-color-itim2101/50/000000/external-car-automotive-itim2101-lineal-color-itim2101-1.png">
    </head>
    <body>
        <%@include file="mainpage.jsp" %>
       
        <div class="row">
            <div class="col-sm-3"></div>
             <div class="col-sm-6">
                 <div class="container-fluid">
        <div class="container">
            <h3>Forgot password</h3>
            <br>
            <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <label>Email</label>
            <input type="email" class="form-control" name="email" id="email" placeholder="Email" required="">
            
        </div>
        <div class="col-sm-2"></div>
        </div>
          <br>
              
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            
            <input type="submit" class="btn btn-info col-12" name="btn" value="Forgot Password" onclick="reset()">
            
        </div>
        <div class="col-sm-2"></div>
        </div>
                
        </div>
                 </div>
            
            </div>
            <div class="col-sm-3"></div>
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
  
  var emailField = document.getElementById('email');
  var resetPassword = document.getElementById('resetPassword');
  function reset()
  {
      
            let emails = document.getElementById("email").value;          
          
            
  if (emails == "") 
      {
          alert("Emails Filds is empty");        
      }
      else
          {
      var email = emailField.value;

    //Built in Firebase function that sends password reset emails
    auth.sendPasswordResetEmail(email)
    .then(() =>{
        console.log('Password Reset Email Sent Successfully!');
        alert('Password Reset Email Sent Successfully!');
    })
    .catch(error =>{
        console.error(error);
        alert(error);
    });
      
  }
  }
  
 
  


	  
			  
</script>
        
       
        
        
        
    </body>
</html>
