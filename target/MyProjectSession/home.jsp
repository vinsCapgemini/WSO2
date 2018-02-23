<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE>
<html>
<head>
<title>First Page JSP</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.8/angular.min.js"></script>
<script type="text/javascript">
	var app = angular.module('myApp', []);

	app.controller('myCtrl', function($scope) {
		$scope.sendForm = function() {
			console.log("Ok2");
		};

	});
</script>
</head>
<body ng-app="myApp">
	<div ng-controller="myCtrl" align="center">
		<a href="LogoutServlet">Logout</a>
		<form action="firstPage">
			<jsp:useBean id="now" class="java.util.Date" />
			<fmt:formatDate var="date" value="${now}" pattern="dd/MM/yyyy HH:mm" />
			<p>Data corrente: ${date}</p>

			<input type="text" id="value" name="value"> <input
				type="button" value="Vai alla Seconda Pagina">
		</form>
	</div>
</body>