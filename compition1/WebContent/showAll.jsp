
<%@page import="com.dto.FlightOpeartion"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.service.FlightOperationServiceImple"%>
<%@page import="com.service.FlightOperationService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="flightOpeartion" class="com.dto.FlightOpeartion" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="flightOpeartion"/>
<%
	System.out.print(flightOpeartion.getTo()+" "+ flightOpeartion.getFrom());
	FlightOperationService flightOperationService = new FlightOperationServiceImple();
	ArrayList<FlightOpeartion> list= flightOperationService.viewAll();
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

<title>Insert title here</title>
</head>
<body >
<div class="container-fluid" style="height: 100vh ;background: linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.5)),url(4.jpg);
 background-size:cover;background-position:center; background-repeat:no-repeat">

	<table class="table table-striped text-light">
			<thead>
				<tr style="font-size:3vh">
					<th>FlightNo</th>
					<th>To</th>
					<th>From</th>
					<th>Date</th>
					<th>Time</th>
					<th>No of Seat</th>
					<th>Booked Seat</th>
					<th>Amount</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<% 
					for(FlightOpeartion e : list){
				%>
				<tr style="font-size:3vh">
					<td  ><%=e.getFlightno()%></td>
					<td  ><%=e.getTo()%></td>
					<td  ><%=e.getFrom()%></td>
					<td  ><%=e.getDate()%></td>
					<td  ><%=e.getTime()%></td>
					<td  ><%=e.getNoOfSeat()%></td>
					<td  ><%=e.getBookedSeat()%></td>
					<td  ><%=e.getAmount()%></td>
					<td  ><h5><a href="flight_delete1.jsp?flightno=<%=e.getFlightno() %>">Delete</a></h5></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>