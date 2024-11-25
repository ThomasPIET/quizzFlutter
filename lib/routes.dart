import 'home/home.dart';
import 'login/login.dart';
import 'about/about.dart';
import 'profile/profile.dart';
import 'topics/topics.dart';

var routes = {
    '/' : (context) => const HomeScreen(),
    '/login' : (context) => const LoginScreen(),
    '/about' : (context) => const AboutScreen(),
    '/profile' : (context) => const ProfileScreen(),
    '/topics' : (context) => const TopicsScreen(),
};