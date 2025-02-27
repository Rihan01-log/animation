import 'package:animation/provider.dart';
import 'package:animation/second.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<AnimationPro>(context, listen: false).initAnimation(this);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(createPageRoute(context));
            },
            child: Text('Next')),
      ),
    );
  }
}

Route createPageRoute(BuildContext context) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) {
      return Second();
    },
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // const begin = Offset(1.0, 0.0);
      // const end = Offset.zero;
      // const curve = Curves.easeInOut;
      // var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      // var offSetani = animation.drive(tween);
      return ScaleTransition(
        scale: animation,
        child: child,
      );
    },
  );
}
