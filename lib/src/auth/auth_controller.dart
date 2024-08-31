import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  late User? _user;

  AuthController() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        _user = null;
        print('User is currently signed out!');
      } else {
        _user = user;
        print('User is signed in!');
      }
    });
  }

  User? get user => _user;
}
