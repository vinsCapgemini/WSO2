<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<!-- <script type="text/javascript"> -->
// var app = angular.module('myApp', []);

// app.controller('myCtrl', function ($scope) {
// $scope.sendForm = function () {
// };

// });
<!-- </script> -->
<title>Second Page JSP</title>
</head>
<body>
<div ng-controller="showCtrl">
    <table border="1">
        <tr>
            <td>Nome</td>
            <td>Cognome</td>
            <td></td>
        </tr>
        <tr ng-repeat="data in Users">
            <td>{{data.Name}}</td>
            <td>{{data.Lastname}}</td>
            <td><a href="#" ng-click="Edit(data)">Edit</a></td>
        </tr>
    </table>
</div>
</body>
</html>