import 'package:flutter/material.dart';
import 'package:implicit_animations/fade_in.dart';
import 'package:implicit_animations/shape_shifting.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Implicit Animations'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const FadeInDemo();
                  },
                ));
              },
              child: const Text('Fade-in'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const AnimatedContainerDemo();
                  },
                ));
              },
              child: const Text('Shape_shifting'),
            ),
          ],
        ),
      ),
    );
  }
}
