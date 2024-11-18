
// lib/widgets/animated_project_card.dart
import 'package:flutter/material.dart';

class AnimatedProjectCard extends StatefulWidget {
  final String title;
  final String description;

  AnimatedProjectCard({
    required this.title,
    required this.description,
  });

  @override
  _AnimatedProjectCardState createState() => _AnimatedProjectCardState();
}

class _AnimatedProjectCardState extends State<AnimatedProjectCard> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          ListTile(
            title: Text(widget.title),
            trailing: IconButton(
              icon: AnimatedRotation(
                duration: Duration(milliseconds: 200),
                turns: _isExpanded ? 0.5 : 0,
                child: Icon(Icons.expand_more),
              ),
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
            ),
          ),
          AnimatedCrossFade(
            firstChild: Container(),
            secondChild: Padding(
              padding: EdgeInsets.all(16),
              child: Text(widget.description),
            ),
            crossFadeState: _isExpanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            duration: Duration(milliseconds: 200),
          ),
        ],
      ),
    );
  }
}