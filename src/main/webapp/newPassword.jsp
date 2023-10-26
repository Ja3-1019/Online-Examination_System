<%@page import="com.quiz.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
<meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>Quiz System</title>
</head>
<body>
<div class="container-fluid">
  <div class="jumbotron bg-dark"  style=" color:white">
  <div class="row" >
    <div class="col-sm-9 mx-auto">
      <h1>DigiEdu ERA</h1>
      <p style=font-size:16px>Creating Winners for Life</p>
    </div>
  </div>
</div>
</div>

<%
 String message=(String)request.getAttribute("message");
 if(message!=null)
 {
 %>
	    <div class="col-sm-12">
	   	<div class="alert alert-danger alert-dismissible fade show" style="width:50%;margin-left: 25%; " >
		  <button type="button" class="close" data-dismiss="alert">&times;</button>
		  <strong><%=message %></strong>
		</div>
		</div>	 
<% } %>

  <div class="row">
    <div class="col-sm-4">
      
    </div>
    
    <div class="col-sm-4">
    
      <div class="container-fluid shadow-lg p-4 mb-4 bg-white"  >
       <h3>New Password</h3>
   		 <hr>
   		 <%
   		Student s=(Student)session.getAttribute("student");
   		 %>
      <form action="MainController" >
  		<div class="form-group">
 	    <label>Security Question</label>
 	    <label><%=s.getQues()%></label>
 	 	</div>
 	 	<div class="form-group">
 	    <input type="text" class="form-control" placeholder="Enter Answer" name="answer">
 	 	</div>
  		<div class="form-group">
 	    <input type="text" class="form-control" placeholder="Enter new Password" name="password">
 	 	</div>
       <div class="form-group" >
       <button type="submit" class="btn btn-primary" name="task" value="updatePassword">Confirm</button>
       </div>
      </form>
      </div>
    </div>
 
  <div class="col-sm-4">
     
    </div>
   </div>

</body>
</html>