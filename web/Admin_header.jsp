<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Car Rental</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <link rel="icon" href="https://img.icons8.com/external-itim2101-lineal-color-itim2101/50/000000/external-car-automotive-itim2101-lineal-color-itim2101-1.png">
        <style>
            body
            {
                background-color: hsl(27deg 95% 90% / 99%) !important;
            }
             h3
           {
               text-align: center;
           }
            .container
           {
               background-color: white;
               margin-top: 30px;
               padding: 30px;
               margin-bottom: 20px;
           }
           .jumbotron
           {
               background-color: white;
               margin-top: 30px;
               padding: 30px;
               margin-bottom: 20px;
           }
           .thead-dark
           {
           background-color: black;color:white
           }
           
        </style>
    </head>
    <body>
        <script src="validation.js"></script>
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
      <a class="navbar-brand" href="index.html"><img src="https://img.icons8.com/external-itim2101-lineal-color-itim2101/50/000000/external-car-automotive-itim2101-lineal-color-itim2101-1.png"/> Vehicle Rental</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarColor01">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
            <a class="nav-link active" href="home.jsp">Home
            <span class="visually-hidden">(current)</span>
          </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="add_brands.jsp">Brand</a>
        </li>
         <li class="nav-item">
             <a class="nav-link" href="car_details.jsp">Car Details</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="add_map.jsp">Map</a>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">List</a>
          <div class="dropdown-menu">
              <a class="dropdown-item" href="brand_list.jsp">Brand list</a>
              <a class="dropdown-item" href="map_list.jsp">Map list</a>
              <a class="dropdown-item" href="vehical_list.jsp">Vehical list</a>
              <a class="dropdown-item" href="registerd_userlist.jsp">User list</a>
              <a class="dropdown-item" href="vehicel_bookings.jsp">Vehicel Bookings</a>
              <a class="dropdown-item" href="sendemail.jsp">Send Mail</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="feedback_list.jsp">Feedback list</a>
            
          </div>
        </li>
      </ul>
<!--        <form class="d-flex" action="logout" method="post">-->
            <a href="change_password.jsp" class="btn btn-light my-2 my-sm-0" type="button" name="btn">Change Password</a>
            <button class="btn btn-danger my-2 my-sm-0" type="submit" name="btn" onclick="mylogout()">Logout</button>
<!--      </form>-->
    </div>
  </div>
</nav>
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


  
  function mylogout()   
  {
      auth.signOut();
      alert("Sign out");
      window.location.href = "admin_login.jsp";
  }
  


	  
			  
</script>
    </body>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"  crossorigin="anonymous"></script>
</html>
