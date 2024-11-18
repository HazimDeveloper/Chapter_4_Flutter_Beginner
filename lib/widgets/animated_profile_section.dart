// lib/widgets/animated_profile_section.dart
import 'package:flutter/material.dart';

class AnimatedProfileSection extends StatefulWidget {
  @override
  _AnimatedProfileSectionState createState() => _AnimatedProfileSectionState();
}

class _AnimatedProfileSectionState extends State<AnimatedProfileSection> 
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 800),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(
      begin: 0.5,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
    ));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.blue[50],
      child: Column(
        children: [
          ScaleTransition(
            scale: _scaleAnimation,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue[100],
              child: Icon(Icons.person, size: 50),
            ),
          ),
          SizedBox(height: 20),
          FadeTransition(
            opacity: _controller,
            child: Text(
              'Your Name',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          SlideTransition(
            position: Tween<Offset>(
              begin: Offset(0, 0.5),
              end: Offset.zero,
            ).animate(_controller),
            child: Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}