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
		//this.krindle = Krindles.query({krindle_id:id});
		var krindle = {};
		krindle.krindle_id = id;
		krindle.krindle = $scope.friendsInKindle;
		Krindles.save(krindle);
	};

	$scope.init = function(id){
		console.log(id);
		var kindle = Krindles.query({krindle_id:id}, function(){
			console.log(kindle);
			$scope.friendsInKindle=kindle;
		});

//		$scope.friendsInKindle=kindle;
		
	};


}