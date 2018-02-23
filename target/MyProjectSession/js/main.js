var app = angular.module('myApp', ['ui.router']);

app.config(function ($stateProvider, $urlRouterProvider) {
    $stateProvider
    .state('Mostra', {
        url: '/Mostra',
        templateUrl: 'firstPage.jsp'
    })
    .state('Modifica', {
        url: '/Modifica',
        templateUrl: 'secondPage.jsp'
    })
});

app.controller("myCtrl", function ($location) {
    $location.path('/Mostra')
});

app.factory("myFactory", function () {
    var savedData = {}
    function set(data) {
        savedData = data;
    }
    function get() {
        return savedData;
    }

    return {
        set: set,
        get: get
    }
})

app.controller("showCtrl", function ($scope, $location, myFactory) {
    $scope.Users = [
        { Name: "Vins", Lastname: "Salv"},
        { Name: "Mario", Lastname: "Rossi"}        
    ]

    $scope.Edit = function (d) {
        myFactory.set(d);
        $location.path('/Modifica');
    }
});

app.controller("editCtrl", function ($scope, $location, myFactory) {
    $scope.Users = myFactory.get();
    $scope.Back = function () {
        $location.path('/Mostra');
    }
})