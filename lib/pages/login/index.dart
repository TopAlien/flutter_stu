import 'package:flutter/material.dart';
import 'package:flutter_card/router/go_router.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('登录'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('登录'),
            ElevatedButton(
              onPressed: () {
                context.goNamed(AppRoutes.login.name);
              },
              child: const Text('跳转到首页'),
            ),
            const RichLineText(text: '99999')
          ],
        ),
      ),
    );
  }
}

class RichLineText extends StatelessWidget {
  final String text;

  const RichLineText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      textBaseline: TextBaseline.alphabetic,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      children: [
        ColoredBox(
          color: Colors.amber,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: text,
                  style: const TextStyle(fontSize: 28),
                ),
                const TextSpan(
                  text: ".90",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
        const ColoredBox(
          color: Colors.red,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "123",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
