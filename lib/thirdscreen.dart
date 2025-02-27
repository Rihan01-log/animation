import 'package:flutter/material.dart';

class Thirdscreen extends StatefulWidget {
  const Thirdscreen({super.key});

  @override
  State<Thirdscreen> createState() => _ThirdscreenState();
}

class _ThirdscreenState extends State<Thirdscreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Color?> animation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..repeat(reverse: true);
    animation =
        ColorTween(begin: Colors.blue, end: Colors.amber).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(tag: 'hello', child: Text('Hello')),
            SizedBox(
              height: 20,
              
            ),
            AnimatedBuilder(
              animation: animation,
              builder: (context, child) => Text(
                'hello  rihan',
                style: TextStyle(color: animation.value, fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
