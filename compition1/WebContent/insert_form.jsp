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

<title>insert detail</title>
</head>
<body>
<div class="container-fluid d-flex justify-content-center "  >


	<form action="insert.jsp" class="w-50">
		<table class="table table-striped">
			<thead>
				<tr class="text-center">
					<th colspan="2"><h3>InsertFlight Details</h3></th>
				</tr>
			</thead>
			<tbody >
				<tr>
					<th>Flight Number</th>
					<th><input type="text" class="form-control" name="flightno" ></th>
				</tr>
				<tr>
					<th>To</th>
					<th><input type="text" class="form-control" name="to" ></th>
				</tr>
				<tr>
					<th>From</th>
					<th><input type="text" class="form-control" name="from" ></th>
				</tr>
				<tr>
					<th>Date</th>
					<th><input type="date" class="form-control" name="date" ></th>
				</tr>
				<tr>
					<th>Time</th>
					<th><input type="text" class="form-control" name="time" ></th>
				</tr>
				<tr>
					<th>Number of Seat</th>
					<th><input type="text" class="form-control" name="noOfSeat" ></th>
				</tr>
				<tr>
					<th>Booked Seat</th>
					<th><input type="text" class="form-control" name="bookedSeat" ></th>
				</tr>
				<tr>
					<th>amount</th>
					<th><input type="text" class="form-control " name="amount" ></th>
				</tr>
				<tr>
					<th><h4><a href="adminhome.jsp">Back</a></h4></th>
					<th><input type="submit" class="btn btn-primary btn-block" value="Add" ></th>
				</tr>
			</tbody>
		</table>
	</form>
	</div>

</body>
</html>