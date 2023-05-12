import 'package:flutter/material.dart';
import 'contact.dart';
import 'home.dart';
import 'person.dart';
import 'comment.dart';


class Upload extends StatelessWidget {
  const Upload({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.cloud_upload),
            tooltip: 'upload',
            onPressed: () {},
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
          child: Text('Upload Page'),
        ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}