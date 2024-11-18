// lib/widgets/animated_skill_chip.dart
import 'package:flutter/material.dart';

class AnimatedSkillChip extends StatefulWidget {
  final String skill;
  
  AnimatedSkillChip(this.skill);

  @override
  _AnimatedSkillChipState createState() => _AnimatedSkillChipState();
}

class _AnimatedSkillChipState extends State<AnimatedSkillChip> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: _isHovered ? Colors.blue : Colors.blue[100],
          borderRadius: BorderRadius.circular(20),
          boxShadow: _isHovered
              ? [BoxShadow(
                  color: Colors.blue.withOpacity(0.3),
                  blurRadius: 8,
                  offset: Offset(0, 4),
                )]
              : [],
        ),
        child: Text(
          widget.skill,
          style: TextStyle(
            color: _isHovered ? Colors.white : Colors.blue[900],
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}