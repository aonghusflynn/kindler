function MainCtrl($scope, Friend, Krindles){
	$scope.friendsInKindle = [];
	$scope.friends = Friend.query();
	$scope.hasFriends = false;

	$scope.addToKindle = function (friend){
		$scope.hasFriends=true;
		$scope.friendsInKindle.push(friend);
		$scope.friends.splice($scope.friends.indexOf(friend), 1);
	};

	$scope.removeFromKindle = function(friend){
		$scope.friendsInKindle.splice($scope.friendsInKindle.indexOf(friend), 1);
		$scope.friends.push(friend);
	};

	$scope.saveToKindle = function(){
		Friend.save();
	};

	$scope.init = function(id){
		console.log('Users in krindle'+Krindles.get({krindle_id:id}));
	};


}