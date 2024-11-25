import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final userStream = FirebaseAuth.instance.authStateChanges();
  final user = FirebaseAuth.instance.currentUser;

}