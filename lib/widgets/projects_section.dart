// lib/widgets/projects_section.dart
import 'package:flutter/material.dart';
import 'animated_project_card.dart';

class ProjectsSection extends StatelessWidget {
  final List<Map<String, String>> projects = [
    {
      'title': 'Flutter Chat App',
      'description': 'A real-time messaging app built with Flutter and Firebase',
    },
    {
      'title': 'Task Manager',
      'description': 'A beautiful task management application',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Projects',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          ...projects.map((project) => AnimatedProjectCard(
            title: project['title']!,
            description: project['description']!,
          )).toList(),
        ],
      ),
    );
  }
}
