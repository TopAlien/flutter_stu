import 'package:flutter/material.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("404呀"),
      ),
      body: const Placeholder(
        child: Text("UnknownPage 呀"),
      ),
    );
  }
}
