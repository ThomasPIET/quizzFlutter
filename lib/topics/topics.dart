import 'package:flutter/material.dart';
import 'package:from_zero/shared/bottom_nav.dart';

class TopicsScreen extends StatelessWidget {
  const TopicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Topics'),
      ),
      body: const Center(
        child: Text('Topics Screen'),
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 0),
    );
  }
}
