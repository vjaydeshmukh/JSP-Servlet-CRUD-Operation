<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<title>Student List</title>
</head>
<body>
	<div class="container">
		<h1 class="text-center mt-4">Student Details...</h1>
		<hr>
		<p class="text-center">${NOTIFICATION}</p>
		<hr>
		<div class="container">
			<div class="row text-center">
				<span class="col-lg-6 col-md-6 col-sm-4">
					<button onclick="location.href = 'views/Studentform.jsp'" class = "btn btn-primary">Add More Student</button>
				</span>  
				<span class="col-lg-6 col-md-6 col-sm-4">
					<button onclick="location.href = '${pageContext.request.contextPath}/StudentController?action=DELETEALL'" class = "btn btn-primary">Delete All Student Detail</button>
				</span>
			</div>
		</div>
		<hr>
		<table class = "table table-striped table-bordered">
			<tr class = "thead-dark">
				<th>ID</th>
				<th>Roll No</th>
				<th>Name</th>
				<th>city</th>
				<th>CreatedOn</th>
				<th>Edit</th>
			</tr>
			<c:forEach items="${list}" var="student">
			
				<tr>
					<td>${student.id}</td>
					<td>${student.rno}</td>
					<td>${student.name}</td>
					<td>${student.city}</td>
					<td>${student.date}</td>
					<td> 
						<a href = "${pageContext.request.contextPath}/StudentController?action=EDIT&id=${student.id}">Edit</a> 
						| 
						<a href = "${pageContext.request.contextPath}/StudentController?action=DELETE&id=${student.id}">Delete</a> 
					</td>
				</tr>
			</c:forEach>
			
		</table>
	</div>
	
	    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>