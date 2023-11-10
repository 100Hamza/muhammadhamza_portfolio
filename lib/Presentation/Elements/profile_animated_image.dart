import 'package:flutter/material.dart';

class ProfileImageAnimated extends StatefulWidget {
  const ProfileImageAnimated({super.key});

  @override
  State<ProfileImageAnimated> createState() => _ProfileImageAnimatedState();
}

class _ProfileImageAnimatedState extends State<ProfileImageAnimated> with TickerProviderStateMixin {


  late final AnimationController _animationController;
  late final Animation<Offset> _animation;

  @override
  void initState() {
    // TODO: implement initState
    _animationController = AnimationController(vsync: this, duration: const Duration(seconds: 5),)..repeat(reverse: true);
    _animation = Tween(begin: const Offset(0.05, 0.05,), end: const Offset(0, 0), ).animate(_animationController);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: const CircleAvatar(
        backgroundColor: Colors.white,
        radius: 104,
        child: CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage('assets/images/hamza6.png', ),
        ),
      ),
    );
  }
}
