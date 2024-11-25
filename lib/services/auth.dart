import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final userStream = FirebaseAuth.instance.authStateChanges();
  final user = FirebaseAuth.instance.currentUser;

  Future<void> signInAnonymously() async {
    try {
      FirebaseAuth.instance.setLanguageCode('en');
      await FirebaseAuth.instance.signInAnonymously();
    } catch (e) {
      print(e);
    }
  }

  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      print(e);
    }
  }

}