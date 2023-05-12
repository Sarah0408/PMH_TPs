import 'package:flutter/material.dart';

import './comment.dart';
import './contact.dart';
import './upload.dart';
import 'home.dart';

class Person extends StatelessWidget {
  const Person({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Person'),
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
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const Comment()),
              );
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
            onPressed: () {},
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
        child: Text('User Page'),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}