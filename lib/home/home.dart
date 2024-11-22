import 'package:flutter/material.dart';
import 'package:flutterfire/shared/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/about' )
        , child: const Text('About')),
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 0),
    );
  }
}
