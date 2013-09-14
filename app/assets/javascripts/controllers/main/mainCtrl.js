function MainCtrl($scope, Friend){

	$scope.friends = Friend.query();
	function addToKindle(id){
		$scope.friendsInKindle.push($scope.friends[id]);
	}
}