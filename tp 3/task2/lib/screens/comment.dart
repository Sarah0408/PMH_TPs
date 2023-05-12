import 'package:flutter/material.dart';
import 'contact.dart';
import 'home.dart';
import 'person.dart';
import 'upload.dart';

class Comment extends StatelessWidget {
  const Comment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comment'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.cloud_upload),
            tooltip: 'upload',
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const Upload()),
              );
            },
          ),IconButton(
            icon: const Icon(Icons.comment),
            tooltip: 'comment',
            onPressed: () {
            },
          ),IconButton(
            icon: const Icon(Icons.contacts),
            tooltip: 'contact',
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const Contact()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            tooltip: 'user',
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const Person()),
              );
            },
          ), //IconButton
        ],leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        tooltip: 'Home',
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const MyApp()),
          );
        },
      ),
      ),
      body: const Center(
        child: Text('Comment Section'),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}