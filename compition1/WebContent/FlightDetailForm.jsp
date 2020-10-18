<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<body>
		<div class="container-fluid d-flex justify-content-center" style="height: 100vh ;background: linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.5)),url(13.jpg);
 background-size:cover;background-position:center; background-repeat:no-repeat">
		
		<form action="FlightDetail.jsp" class="w-50" method="post"><br><br>
		<div class="bg-danger text-light d-flex justify-content-center">
			<h5><%=request.getParameter("msg")!=null ? request.getParameter("msg") : "" %></h5>
		</div>
		<table class="table table-striped" >
			<thead class="text-light">
				
				<tr class="text-center "  style="font-weight:bold">
					<th colspan="2"  ><h3>Search Flight</h3></th>
				</tr>
			</thead>
			<tbody class="text-light">
				<tr>
					<td><h4>Source</h4></td>
					<td><input type="text" class="form-control" name="to"  /> </td>
				</tr>
				<tr>
					<td><h4>Destination</h4></td>
					<td><input type="text" class="form-control" name="from"  /> </td>
				</tr>
				<tr>
					<td><h4>Date</h4></td>
					<td><input type="date" class="form-control" name="date"  /> </td>
				</tr>
				
			</tbody>
		</table>
		<input type="submit" class="btn btn-primary btn-block" value="Search Here"  />
		</form>
	</div>
</body>
</html>