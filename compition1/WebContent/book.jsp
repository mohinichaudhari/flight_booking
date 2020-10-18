<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.service.*" %>
<%@ page import = "java.util.*" %>
<%@ page import = "com.dto.*" %>
<jsp:useBean id="user" class = "com.dto.User" scope = "session"></jsp:useBean>
<jsp:useBean id="FlightOpeartion" class="com.dto.FlightOpeartion" scope="session" ></jsp:useBean>

<jsp:setProperty property="*" name="user"/>

<%! ArrayList<User> arr = new ArrayList< >(); %>
<% int i = FlightOpeartion.getBookedSeat(); 

 int j =FlightOpeartion.getNoOfSeat();
 int k = user.getBookedSeats();
	 if(j<(i+k))
 {
	 if(((i+k)-j)>0)
	 {
		int l=(j-i);
		String l1 = String.valueOf(l);
		 response.sendRedirect("FlightDetailForm.jsp?msg=Only "+l1+" seats avaliable");

	 }
	 else
	 {
	 response.sendRedirect("FlightDetailForm.jsp?msg=Flight allready Full");
 	}
 }
 else
 {

	   UserService userService = new UserServiceImple();
	   userService.insert(user);
	 arr = userService.show(user.getBookingId());
	
 }
 
 %>
 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

<!-- jQuery and JS bundle w/ Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

</head>
<body style="background-image:url(5.jpg);background-size:cover;background-repeat:no-repeat;">
	<div class = "container-fluid" >
		<div class = "text-center">
		<h1>BOOKING DETAILS</h1>
		</div>
		<table class = "table table-bordered">
		<thead class = "bg-dark">
			<tr class = "text-light">
				<th>FLIGHT NO</th>
				<th>BOOKED SEATS</th>
				<th>NAME</th>
				<th>BOOKING ID</th>
				<th>DEPARTURE DATE</th>
				<th>DEPARTURE TIME</th>
				<th>CONTACT</th>
		    </tr>
	   </thead>
	   <tbody class = "bg-light">
	   		<% for(User u : arr){ %>
				<tr class = "text-dark">
					<td><%=u.getFlightNo()%></td>
					<td><%=u.getBookedSeats()%></td>
					<td><%=u.getName()%></td>
					<td><%=u.getBookingId()%></td>
					<td><%=u.getDeptDate()%></td>
					<td><%=u.getTime()%></td>
					<td><%=u.getContact() %></td>
				</tr>	
	        <% } %>
	   </tbody>
	</table>
	</div>	
</body>
</html>