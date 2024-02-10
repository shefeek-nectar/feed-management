import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
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
                    
                    Column(children: [
                      
                      Text("Name"),
                      
                      
                    ],)
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
