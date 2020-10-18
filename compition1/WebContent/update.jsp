<%@page import="com.service.FlightOperationServiceImple"%>
<%@page import="com.service.FlightOperationService"%>
<jsp:useBean id="flightOpeartion" class="com.dto.FlightOpeartion" scope="session"></jsp:useBean>
<<jsp:setProperty property="*" name="flightOpeartion"/>

<% 
	FlightOperationService flightOperationService = new FlightOperationServiceImple();
	int i = flightOperationService.updateFlight(flightOpeartion);
	System.out.println(i);
	response.sendRedirect("show.jsp");
%>