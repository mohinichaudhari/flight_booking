<%@page import="com.dto.FlightOpeartion"%>
<%@page import="com.service.FlightOperationServiceImple"%>
<%@page import="com.service.FlightOperationService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
	int flightno = Integer.parseInt(request.getParameter("flightno"));
	System.out.println(flightno);
	FlightOperationService flightOperationService = new FlightOperationServiceImple();
	FlightOpeartion flightOpeartion = flightOperationService.findFlight(flightno);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<!-- jQuery and JS bundle w/ Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

<title>Update Details</title>
</head>
<body>
	<div class="container-fluid d-flex justify-content-center">
	
		<form action="update.jsp" class="w-50">
		<input type="hidden"  name="flightno" value="<%=flightOpeartion.getFlightno() %>">
		<table class="table table-striped">
			
			<thead>
				<tr>
					<th colspan="2" class="text-center"><h3>Update Details</h3></th>
				</tr>
			</thead>
			<tbody>
				
				<tr>
					<th>To</th>
					<th><input type="text" class="form-control" name="to" value="<%=flightOpeartion.getTo() %>"></th>
				</tr>
				<tr>
					<th>From</th>
					<th><input type="text" class="form-control" name="from" value="<%=flightOpeartion.getFrom() %>"></th>
				</tr>
				<tr>
					<th>Date</th>
					<th><input type="text" class="form-control" name="date" value="<%=flightOpeartion.getDate()%>" ></th>
				</tr>
				<tr>
					<th>Time</th>
					<th><input type="text" class="form-control" name="time" value="<%=flightOpeartion.getTime()%>"></th>
				</tr>
				<tr>
					<th>Number of Seat</th>
					<th><input type="text" class="form-control" name="noOfSeat" value="<%=flightOpeartion.getNoOfSeat()%>"></th>
				</tr>
				<tr>
					<th>Booked Seat</th>
					<th><input type="text" class="form-control" name="bookedSeat" value="<%=flightOpeartion.getBookedSeat()%>"></th>
				</tr>
				<tr>
					<th>amount</th>
					<th><input type="text" class="form-control" name="amount" value="<%=flightOpeartion.getAmount() %>"></th>
				</tr>
				<tr>
					<th><h4><a href="show.jsp">Back</a></h4></th>
					<th><input type="submit" class="btn btn-primary" value="Update" ></th>
				</tr>
			</tbody>
		</table>
	</form>
</div>
</body>
</html>