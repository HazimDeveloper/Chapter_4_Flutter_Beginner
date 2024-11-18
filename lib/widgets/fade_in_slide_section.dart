// lib/widgets/fade_in_slide_section.dart
import 'package:chapter4/widgets/animated_skills_chip.dart';
import 'package:flutter/material.dart';

class FadeInSlideSection extends StatelessWidget {
  final Animation<double> animation;
  final Animation<Offset> slideAnimation;
  final Widget child;

  FadeInSlideSection({
    required this.animation,
    required this.slideAnimation,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }
}
