import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UnknownPage extends StatefulWidget {
  const UnknownPage({super.key});

  @override
  State<UnknownPage> createState() => _UnknownPageState();
}

class _UnknownPageState extends State<UnknownPage> {
  final params = Get.arguments;

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
              Text("name-:${params["name"]}"),
              Text("id-:${params["id"]}"),
            ],
          ),
        ));
  }
}
