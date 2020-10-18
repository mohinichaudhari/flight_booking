<%@page import="com.service.FlightOperationServiceImple"%>
<%@page import="com.service.FlightOperationService"%>
<jsp:useBean id="flightOpeartion" class="com.dto.FlightOpeartion" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="flightOpeartion"/>
<% 
	FlightOperationService fightOperationService = new FlightOperationServiceImple();
	int i = fightOperationService.insertFlight(flightOpeartion);
	System.out.println("record inserted "+i);
	response.sendRedirect("adminhome.jsp");
%>