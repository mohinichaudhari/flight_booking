
<%@page import="com.service.FlightOperationServiceImple"%>
<%@page import="com.service.FlightOperationService"%>
<% 
	int flightno = Integer.parseInt(request.getParameter("flightno"));
	System.out.println(flightno);
	FlightOperationService flightOperationService = new FlightOperationServiceImple();
	flightOperationService.deleteFlight(flightno);
	response.sendRedirect("show.jsp");
%>