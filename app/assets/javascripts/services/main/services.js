angular.module('friendsServices',['ngResource'])
	.factory('Friend', function($resource){
		return $resource('/facebook_users/list');
	})
	.factory('Krindles', function($resource){
		return $resource('/facebook_users/krindle/:krindle_id/:krindle', {krindle_id:'@krindle_id',});
	});