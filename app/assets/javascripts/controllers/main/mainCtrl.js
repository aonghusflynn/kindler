function MainCtrl($scope, Friend){
	$scope.friendsInKindle = [];
	$scope.friends = Friend.query();

	$scope.addToKindle = function (friend){
		console.log('friend: '+friend);
		$scope.friendsInKindle.push(friend);
		$scope.friends.splice($scope.friends.indexOf(friend), 1);
	};

	$scope.removeFromKindle = function(friend){
		$scope.friendsInKindle.splice($scope.friendsInKindle.indexOf(friend), 1);
		$scope.friends.push(friend);
	}

}