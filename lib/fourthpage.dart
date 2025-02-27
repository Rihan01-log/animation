import 'package:flutter/material.dart';

class Fourthpage extends StatefulWidget {
  const Fourthpage({super.key});

  @override
  State<Fourthpage> createState() => _FourthpageState();
}

class _FourthpageState extends State<Fourthpage> {
  double height = 100;
  double width = 100;
  Color color = Colors.transparent;

  void changeSize() {
    setState(() {
      height = height == 100 ? 200 : 100;
      width = width == 100 ? 200 : 100;
      color = color == Colors.transparent ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
              height: height,
              width: width,
              color: color,
              duration: Duration(seconds: 3)),
          ElevatedButton(
              onPressed: () {
                changeSize();
              },
              child: Text('Change'))
        ],
      ),
    );
  }
}
