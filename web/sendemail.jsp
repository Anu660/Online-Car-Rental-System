
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Send Mail</title>
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
            <h3>Send Mail</h3>
           
            <br>
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <label>Email Id</label>
           <select name="Email" id="email" class="form-control">
                
             </select>
        </div>
        <div class="col-sm-2"></div>
        </div>
           
            <br>
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <label>Message</label>
            <textarea  class="form-control" id="message"   required=""></textarea>
            
            
        </div>
        <div class="col-sm-2"></div>
        </div>
            <br>
        
        <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            
            <input type="button" class="btn btn-info" name="btn" value="Send mail" onclick="sendMail()">
            <input type="button" class="btn btn-danger" name="btn" value="Cancel">
            
            
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
           
        
        
<script src="https://smtpjs.com/v3/smtp.js">
</script>

 <script type="text/javascript">
    	function sendMail() {

  //getting values from input fields

  var sender="jrsabane123@gmail.com";

  var password="D5C73758A8E61001D40940A725E4227AB58F";

  var receiver=document.getElementById("email").value;

  var content=document.getElementById("message").value;

 
  //Sending email

  Email.send({

  Host : "smtp.elasticemail.com",

  Username: sender,

  Password:password,

  To: receiver,

  From: sender,

  Subject: "Check Email Sending",

  Body: content

  }).then(function (message) {

  alert("Email sent successfully")
  
   location.reload();

  });
  
  
  

}
    </script>
    <script src="https://www.gstatic.com/firebasejs/8.1.1/firebase-app.js"></script>	 
<script src="https://www.gstatic.com/firebasejs/8.1.1/firebase-database.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.1.1/firebase-storage.js"></script>
    <script>
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
        
        //serach data dyanmic 
  var ref = firebase.database().ref("Payment");

  ref.on("value", function(snapshot) {
  snapshot.forEach(function(childSnapshot) {
  var childData = childSnapshot.val();
  var email=childData.email;
  console.log(email);
 
   $('#email').append(new Option(email, email));
 });
});
    </script>

 
    </body>
</html>
