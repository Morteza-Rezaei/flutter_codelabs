import 'package:flutter/material.dart';

const owlUrl =
    'https://raw.githubusercontent.com/flutter/website/main/src/assets/images/docs/owl.jpg';

class FadeInDemo extends StatefulWidget {
  const FadeInDemo({super.key});

  @override
  State<FadeInDemo> createState() => _FadeInDemoState();
}

class _FadeInDemoState extends State<FadeInDemo> {
  double opacity = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Image.network(
            owlUrl,
            height: height * 0.8,
          ),
          TextButton(
            onPressed: () => setState(() {
              opacity = 1;
            }),
            child: const Text(
              'Show Details',
              style: TextStyle(
                color: Colors.blueAccent,
              ),
            ),
          ),
          AnimatedOpacity(
            opacity: opacity,
            duration: const Duration(seconds: 2),
            child: const Column(
              children: [
                Text('Type: Owl'),
                Text('Age: 39'),
                Text('Employment: None'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
