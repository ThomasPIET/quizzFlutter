import 'dart:math';

import 'package:flutter/material.dart';
import 'package:from_zero/services/auth.dart';
import 'package:from_zero/topics/topics.dart';


import '../login/login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: AuthServices().userStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('An error occurred'),
            );
          } else if (snapshot.hasData) {
            return const TopicsScreen();
          }
          return const LoginScreen();
        });
  }
}