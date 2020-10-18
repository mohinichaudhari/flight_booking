<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ include file="header.jsp" %>

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

<title>Admin Home Page</title>
</head>
<body style="background-image:url(1.jpg); background-size:cover; background-repeat:no-repeat ;">
	<div class="container-fluid" >
	
	<table class="table table-striped" >
			<thead>
				<tr style="font-size:7vh">
					<th colspan="2" >Home Page</th>
				</tr>
			</thead>
			<tbody style="font-size:5vh">
				<tr>
					<td><a href="insert_form.jsp" >Insert</a></td>
					
				</tr>
				<tr>
					<td><a href="show_form.jsp" >View</a></td>				
				</tr>
				<tr>
					<td><a href="showAll.jsp" >View All</a></td>				
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>
