
// lib/widgets/skills_section.dart
import 'package:chapter4/widgets/animated_skills_chip.dart';
import 'package:flutter/material.dart';

class SkillsSection extends StatefulWidget {
  @override
  _SkillsSectionState createState() => _SkillsSectionState();
}

class _SkillsSectionState extends State<SkillsSection> {
  final List<String> skills = [
    'Flutter', 'Dart', 'Firebase',
    'UI Design', 'Git', 'REST API'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skills',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: skills.map((skill) => AnimatedSkillChip(skill)).toList(),
          ),
        ],
      ),
    );
  }
}
