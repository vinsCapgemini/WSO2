<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html ng-app="app">
<head>
<script src="https://code.angularjs.org/1.4.0/angular.js"></script>
<script src="js/main.js"></script>
<body ng-controller="myCtrl">
	<div align="center">
		<a href="LogoutServlet">Logout</a>
		<ul style="list-style-type: none;">
		<br>
			<li ng-repeat="item in items">{{ item }}
				<button ng-click="remove($index)">Elimina</button>
			</li>
			
		</ul>

		<div>
			<input type="text" ng-model="input">
			<button type="submit" ng-click="add()">Aggiungi</button>
		</div>
	</div>
</body>
</html>