import 'package:flutter/material.dart';
import 'package:rocket_app/screens/home.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  State<AnimationScreen> createState() => _AnimationState();
}

class _AnimationState extends State<AnimationScreen> with SingleTickerProviderStateMixin {
  late Animation<Offset> animation;
  AnimationController? animationController;
  @override void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation = Tween<Offset>(begin: Offset(0, 0), end: Offset(0, -1.2))
        .animate(animationController!);
    animationController?.forward();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    animationController?.forward();
    return SlideTransition(
        position: animation,
        child: Container(
          height: 50,
          width: 50,
            child:Image.asset(
              'images/imgs.png',
              height: 40,
              width: 40,
            ),

        ));
  }
}



