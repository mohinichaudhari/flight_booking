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
<div class="container-fluid d-flex justify-content-center">

	<form action="show.jsp" method="post" class="w-50 mt-5">
		<table class="table table-striped">
			<tr class="text-center">
				<td><h3>View Flight</h3></td>
			</tr>
			<tr>
				<td> <input type="text" class="form-control" name="to" placeholder="Enter destination"></td>
			</tr>
			<tr>
				<td><input type="text" class="form-control" name="from" placeholder="Enter source"></td>
			</tr>
			<tr>
				<td><input type="submit" class="btn btn-primary btn-block" value="Show"></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>