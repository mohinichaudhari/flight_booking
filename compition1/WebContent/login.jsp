<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>Login Page</title>
</head>
<body>
<div class="container-fluid d-flex justify-content-center "style="height: 100vh ;
	background: linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.5)),url(222.jpg);
 background-size:cover;background-position:center; background-repeat:no-repeat">
	<form action="validate.jsp" class="w-50 mt-5" method="post">
		<table class=" table table-striped ">
		
			<thead>
				<tr  class="text-center text-light">
					<th colspan = "2"  ><h3>Login Page</h3></th>
				</tr>
			</thead>
			<tbody class="text-light">
				<tr>
					<td><h5>UserName</h5></td>
					<td><input type="text" class="form-control" name="name" placeholder="Enter username"></td>
				</tr>
				<tr>
					<td><h5>Password</h5></td>
					<td><input type="password" class="form-control"  name="password" placeholder="Enter password"></td>
				</tr>
				
				<tr>
					<td colspan="2" style="color: red;font-size: 15;text-align: center;" >
					<%=(request.getParameter("error_msg")!=null)? request.getParameter("error_msg"):"" %>
					</td>
				</tr>
			</tbody>
		</table>
		<div class="d-flex justify-content-center">
		<input type="submit"  class="btn btn-primary p-auto btn-block " value="login" style="font-size:3vh;">
		</div>
	</form>
	</div>
</body>
</html>