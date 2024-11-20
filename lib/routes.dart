import 'package:flutterfire/about/about.dart';
import 'package:flutterfire/login/login.dart';
import 'package:flutterfire/home/home.dart';
import 'package:flutterfire/profile/profile.dart';
import 'package:flutterfire/topics/topics.dart';


var appRoutes = {
    '/' : (context) => const HomeScreen(),
    '/login' : (context) => const LoginScreen(),
    '/about' : (context) => const AboutScreen(),
    '/profile' : (context) => const ProfileScreen(),
    '/topics' : (context) => const TopicsScreen(),
};