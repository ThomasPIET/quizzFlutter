import 'package:flutter/material.dart';

import '../services/firestore.dart';
import '../services/models.dart';
import '../shared/bottom_nav.dart';

class TopicsScreen extends StatelessWidget {
  const TopicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Topic>>(
      future: FirestoreService().getTopics(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(
            child: Text(snapshot.error.toString()),
          );
        } else if (snapshot.hasData) {
          var topics = snapshot.data!;

          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.deepPurple,
              title: const Text('Topics'),
            ),
            body: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20.0),
              crossAxisSpacing: 10.0,
              crossAxisCount: 2,
              children: topics
                  .map((topic) => Card(
                        child: InkWell(
                          onTap: () {
                            //todo, navigate to quiz screen
                          },
                          child: Center(
                            child: Text(topic.title),
                          ),
                        ),
                      ))
                  .toList(),
            ),
            bottomNavigationBar: const BottomNavBar(
              currentIndex: 0,
            ),
          );
        } else {
          return const Center(
            child: Text('No topics found in Firestore. Check database'),
          );
        }
      },
    );
  }
}
