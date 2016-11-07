angular.module('returnOfInvestment.services', ["firebase"])
    .factory("Auth", ["$firebaseAuth",
        function ($firebaseAuth) {
            return $firebaseAuth();
}])