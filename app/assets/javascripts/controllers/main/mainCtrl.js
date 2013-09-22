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

	$scope.saveToKindle = function(id){
		this.krindle = Krindles.get({krindle_id:id});
		this.krindle.krindle_id = id;
		this.krindle.krindle = $scope.friendsInKindle;
		this.krindle.$save();
	};

	$scope.init = function(id){
		Krindles.query({krindle_id:id});
		
	};


}