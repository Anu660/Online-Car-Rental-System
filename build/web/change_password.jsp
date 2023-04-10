<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change password</title>
         <link rel="icon" href="https://img.icons8.com/external-itim2101-lineal-color-itim2101/50/000000/external-car-automotive-itim2101-lineal-color-itim2101-1.png">
    </head>
    <body>
        <%@include file="Admin_header.jsp" %>
       
        <div class="row">
            <div class="col-sm-3"></div>
             <div class="col-sm-6">
                 <div class="container-fluid">
        <div class="container">
            <h3>Change password</h3>
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
            
            <input type="submit" class="btn btn-info col-12" name="btn" value="Reset Password" onclick="reset()">
            
        </div>
        <div class="col-sm-2"></div>
        </div>
                
        </div>
                 </div>
            
            </div>
            <div class="col-sm-3"></div>
        </div>
        
        
         

<script>
  
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
