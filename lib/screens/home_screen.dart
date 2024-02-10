import 'package:feed_management/screens/saved_feeds/saved_feeds_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                SavedFeedsScreen.id,
              );
            },
            icon: Icon(Icons.bookmark_border),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return const Card(
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    Column(
                      children: [
                        Text("Name"),
                      ],
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
