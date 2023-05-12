import 'package:flutter/material.dart';
import 'comment.dart';
import 'contact.dart';
import 'person.dart';
import 'upload.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: "Multi Screen App"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
            tooltip: 'person',
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const Person()),
              );
            },
          ), //IconButton
        ],
      ),
        body: const Center(
          child: Text('Welcome to the home page!'),
        ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}