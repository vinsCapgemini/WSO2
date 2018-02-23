<!DOCTYPE html> 
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vins Project Session</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.8/angular.min.js"></script>

</head>
<body>
<div ng-controller="editCtrl">
    Nome :<input type="text" ng-model="Users.name" />
    Cognome :<input type="text" ng-model="Users.lastname" />
    <a href="#" ng-click="Back()">Edit</a>
</div>
</form> 
</body>
</html>
