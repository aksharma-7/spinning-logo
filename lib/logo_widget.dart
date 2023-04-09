import 'package:flutter/material.dart';

class LogoWidget extends StatefulWidget {
  const LogoWidget({super.key});

  @override
  _LogoWidgetState createState() => _LogoWidgetState();
}

class _LogoWidgetState extends State<LogoWidget>
    with SingleTickerProviderStateMixin {
  bool _isRotating = false;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animation = Tween<double>(
      begin: 0,
      end: 360,
    ).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleTap() {
    if (_isRotating) {
      _animationController.stop();
    } else {
      _animationController.repeat();
    }
    setState(() {
      _isRotating = !_isRotating;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Transform.rotate(
        angle: _animation.value * (3.14 / 180),
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}
