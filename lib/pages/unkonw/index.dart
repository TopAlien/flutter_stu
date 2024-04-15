import 'package:flutter/material.dart';

class UnknownPage extends StatefulWidget {
  final String name;
  final String id;
  const UnknownPage({super.key, required this.name, required this.id});

  @override
  State<UnknownPage> createState() => _UnknownPageState();
}

class _UnknownPageState extends State<UnknownPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("404呀"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("name-:${widget.name}"),
              Text("id-:${widget.id}"),
            ],
          ),
        ));
  }
}
