<%@page import="com.dto.FlightOpeartion"%>
<%@page import="com.dto.FlightDetail"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.service.FlightService"%>
<%@page import="com.service.FlightServiceImple"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

  
<jsp:useBean id="FlightOpeartion" class="com.dto.FlightOpeartion" scope="session" ></jsp:useBean>
<jsp:setProperty property="*" name="FlightOpeartion"/>
<%
	FlightService fs = new FlightServiceImple();
	ArrayList<FlightOpeartion> list = fs.selectAll(FlightOpeartion);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<!-- jQuery and JS bundle w/ Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

<title>Flight List</title>
</head>
<body >
	<div class="container-fluid" style = " height:100vh; background: linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.5)),url(14.jpg);
 background-size:cover;background-position:center; background-repeat:no-repeat">
		<table class="table table-striped text-light" >
			<thead >
				<tr>
					<th><h4>Flight no</h4></th>
					<th ><h4>Source</h4></th>
					<th ><h4>Destination</h4></th>
					<th ><h4>Date</h4></th>
					<th ><h4>Time</h4></th>
					<th ><h4>No of Seats</h4></th>
					<th ><h4>Booked Seats</h4></th>
					<th ><h4>Amount</h4></th>
					
				</tr>
				
			</thead>
			<tbody>
				<% 
					for(FlightOpeartion f : list){
				%>
				<tr>
				<form action="book_form.jsp" method="post">
				
				<td ><h5><input type= "hidden" name = "flightno" value=<%=f.getFlightno()%>><%=f.getFlightno()%></h5></td>
					<td  ><h5><input type= "hidden" name = "to" value=<%=f.getTo()%>><%=f.getTo()%></h5></td>
					<td  ><h5><input type= "hidden" name = "from" value =<%=f.getFrom()%> ><%=f.getFrom()%></h5></td>
					<td  ><h5><input type= "hidden" name = "date" value =<%=f.getDate()%> ><%=f.getDate()%></h5></td>
					<td  ><h5><input type= "hidden" name = "time" value =<%=f.getTime()%> ><%=f.getTime()%></h5></td>
				    <td ><h5><input type= "hidden" name = "noOfSeat" value =<%=f.getNoOfSeat()%> ><%=f.getNoOfSeat()%></h5></td>
				    <td  ><h5><input type= "hidden" name = "bookedSeat" value =<%=f.getBookedSeat()%> ><%=f.getBookedSeat()%></h5></td>
					<td  ><h5><input type= "hidden" name = "amount" value =<%=f.getAmount()%> ><%=f.getAmount()%></h5></td>
					
					
					
					<td  ><input type="submit" class="btn btn-primary btn-block" value = "Book"></td>	
				</form>
				</tr>
				
				
				<% } %>
				<tr>
				
				
				</tr>
				
			</tbody>
		</table>
	</div>
</body>
</html>