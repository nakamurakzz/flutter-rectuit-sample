import 'package:amplify_flutter/amplify_flutter.dart';

class CognitoClient {
  CognitoClient();

  Future<bool> isUserSignedIn() async {
    final result = await Amplify.Auth.fetchAuthSession();
    return result.isSignedIn;
  }

  Future<AuthUser> getCurrentUser() async {
    final user = await Amplify.Auth.getCurrentUser();
    return user;
  }
}

final CognitoClient cognitoClient = CognitoClient();
