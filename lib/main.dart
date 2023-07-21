import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rich Text Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                  text: TextSpan(
                      text: 'Hello ',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontSize: 50),
                      children: const [
                    TextSpan(
                        text: 'bold ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24)),
                    TextSpan(
                        text: 'World',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 24)),
                  ])),
              const Divider(
                color: Colors.black,
                thickness: 0.1,
              ),
              RichText(
                  text: TextSpan(
                      text: "Don't have an account? ",
                      style: Theme.of(context).textTheme.bodyLarge,
                      children: const [
                    TextSpan(
                        text: 'Signup',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
