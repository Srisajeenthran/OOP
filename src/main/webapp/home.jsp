<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/bootstrap-extended.min.css">
<link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/fonts/simple-line-icons/style.min.css">
<link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/colors.min.css">
<link rel="stylesheet" type="text/css" href="https://pixinvent.com/stack-responsive-bootstrap-4-admin-template/app-assets/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">

<link rel="stylesheet" href="css/mdb.min.css"/>
<link rel="stylesheet" href="Home.css">
<jsp:include page="Header.jsp" />

<title>login</title>
<style>
.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin:auto;
  cursor: pointer;
}
.card{
			margin: auto;
			
		}
		.btn{
			 float: right;
		}
#btn1{
 background-color: #f5d658;
}	
#btn2{
 background-color: #a8de36;
}	
.cat_search{
	margin: auto;
	position:relative;	
}
.col-sm-2{
	width: 100%;
}
.idcus{
	visibility: hidden;
}
li.cat a{
	float:center;
	color:#000000;
	padding:18px 20px;
}
</style>

</head>
<body>


 <div class=" category bg-image obj-fit-cover container-fluid py-4" style="background-image: url('https://cdn.pixabay.com/photo/2021/04/11/16/02/gradient-6170176_1280.jpg'); height:45.5vh; width: 100vw   background-size: cover;">
 
   <div class="cat_search container">
   <h2 style="padding-bottom: 20px;"><center><b>WELCOME TO RENTWHEELS </b></center></h2>
   <ul class="cat container"> 
    
   </ul> 
   </div>  
  </div>
 
  
<div class="container-fluid ">
<div class="row">
<div class="col-sm-2 p-3 text-white bg-image obj-fit-cover container" style="background-image: url('https://community.dialog.lk/images/home/home-banner2-left.png')"></div>
<div class="col-sm-6 p-3 border-start border-end text-black">
        
      
      
<h2 style="font-family: 'Arial';">ABOUT US</h2>
	<h7 style="font-family: 'Arial', sans-serif;">
Welcome to RentWheels, your ultimate destination for hassle-free and convenient vehicle rentals.

At RentWheels, we understand that the freedom of the open road and the ease of mobility are essential to modern living. Whether you're a traveler exploring new horizons, a commuter navigating the city, or an adventure seeker in need of a reliable set of wheels, RentWheels is here to make your journey a breeze.
<span style="float : right; padding-left:8px; ">
<a href="aquestions.jsp" id="btn1"class="btn btn-rounded">Booking Vehicle</a></button></span>
<span style="float : right; ">
<a href="NewQuestion.jsp" id="btn2"class="btn btn-rounded">Driver profiles</a></span>
</h7>
<br>

<div class="que-cards">
<c:forEach var="que" items="${lquestions}" >
<div class="card border-dark mb-3" style="max-width: 50rem;">
  <h6 class="card-header" >${que.username}</h6>
  <div class="card-body">
    <h5 class="card-title">${que.category}</h5>
    <p class="card-text">${que.question}</p>
    <a href="#" class="btn btn-primary">View Answer</a>
  </div>
</div>

</c:forEach>
</div>
    
</div>


<div class="col-sm-2 p-3 border-end"> 



<div class="col-sm-2 p-3 text-white bg-image obj-fit-cover container" style="background-image: url('https://community.dialog.lk/images/home/home-banner2-right.png')"></div>
   
</div>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>