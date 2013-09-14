angular.module('friendsApp',['friendsServices'])
	.config(friendsRouter);

	function friendsRouter($routeProvider){
		$routeProvider
			.when('/', {template:'<h1>Testing</h1>',controller:'MainCtrl'})
	}