angular.module('friendsServices',['ngResource'])
	.factory('Friend', function($resource){
		return $resource('/facebook_users/list');
	})