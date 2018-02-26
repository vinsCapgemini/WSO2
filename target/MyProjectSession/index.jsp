<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vins Project Session</title>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>

<script type="text/javascript">
var app = angular.module('myApp', []);

app.controller('myCtrl', function ($scope) {
$scope.sendForm = function () {
	console.log("Ok");
};

});
</script>
</head>
<body ng-app="myApp" ng-controller="myCtrl">
	<h2 align="center">Login Page</h2>
	<!-- <form action="LoginServlet" method="post" align="center">   -->
	<form action="LoginServlet" method="post" align="center" name="user"
		ng-submit="user.$valid &&sendForm()">
		Username: <input type="text" name="username" ng-model="model"
			id="input" ng-pattern="/^[a-zA-Z]+$/" required> <span
			style="color: Red"
			ng-show="user.username.$dirty&&user.username.$error.pattern">Sono
			ammessi solo caratteri</span> <br> <br> Password: <input
			type="password" name="password" required><br> <br>
		<br> <input type="submit" value="Login">
	</form>
</body>
</html>
