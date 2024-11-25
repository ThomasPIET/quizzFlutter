import 'package:flutter/material.dart';
import 'package:from_zero/shared/bottom_nav.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: const Center(
        child: Text('About Screen'),
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 1),
    );
  }
}
