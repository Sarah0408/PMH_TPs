import 'package:flutter/material.dart';

import 'comment.dart';
import 'home.dart';
import 'person.dart';
import 'upload.dart';


class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
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
            onPressed: () {},
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
        child: Text('Contact Page'),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}