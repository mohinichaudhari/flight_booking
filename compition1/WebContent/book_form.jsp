<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="FlightOpeartion" class="com.dto.FlightOpeartion" scope="session" ></jsp:useBean>
<jsp:setProperty property="*" name="FlightOpeartion"/>
 
 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<!-- jQuery and JS bundle w/ Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</head>
<body >
	<div class="container-fluid " style="height: 100vh ;background: linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.5)),url(3.jpg);
 background-size:cover;background-position:center; background-repeat:no-repeat">

	<table class="table table-striped">
		<thead class="bg-dark text-light">
		<tr >
		<th><h4>Flight No</h4></th>
		<th><h4>Source</h4></th>
		<th><h4>Destination</h4></th>
		<th><h4>Date</h4></th>
		<th><h4>Time</h4></th>
		<th><h4>No of seat</h4></th>	
		<th><h4>Booked seat</h4></th>	
		<th><h4>amount</h4></th>
		</tr>	
		</thead>
		<tbody class="text-light" >
		<tr>
		<td><h5><%=request.getParameter("flightno") %></h5></td>
		<td><h5><%=request.getParameter("to") %></h5></td>
		<td><h5><%=request.getParameter("from") %></h5></td>
		<td><h5><%=request.getParameter("date") %></h5></td>
		<td><h5><%=request.getParameter("time") %></h5></td>
		<td><h5><%=request.getParameter("noOfSeat") %></h5></td>
		<td><h5><%=request.getParameter("bookedSeat") %></h5></td>
		<td><h5><%=request.getParameter("amount") %></h5></td>
		</tr>
		</tbody>
	</table>
	<div class="bg-danger">
		<%=request.getParameter("msg")!=null ? request.getParameter("msg") : "" %>
	</div>
	<div class = "container-fluid d-flex justify-content-center mt-5">
		
		<form action = "book.jsp" class = "d-flex flex-column w-25">
			
			<div class = "text-center text-light">
				<h3><p class = "font-weight-bold">BOOKING DETAILS</p></h3>
			</div>
			<input type= "hidden" name = "flightNo" value=<%=request.getParameter("flightno") %>>
			<input type= "hidden" name = "time" value=<%=request.getParameter("time") %>>
			<input type= "hidden" name = "deptDate" value=<%=request.getParameter("date") %>>
			<input type = "text" class = "form-control my-2" placeholder = "Enter username" name = "name">
			<input type = "number" class = "form-control my-2" placeholder = "No. of seats" name = "bookedSeats">
			<input type = "text" class = "form-control my-2" placeholder = "contact" name = "contact">
			<input type = "submit" class = "btn btn-primary my-2" value = "Enter">
	    </form>
	</div>
</div>
</body>
</html>