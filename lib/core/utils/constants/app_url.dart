class AppUrl{

AppUrl._();
  
 static const String baseUrl = "https://api.github.com";
 static  String getUser({required String userName}) => "$baseUrl/users/$userName";
 static  String getUserRepos({required String userName}) => "$baseUrl/$userName/repos";
}