import 'package:flutter/material.dart';

class ProjectTile extends StatelessWidget {
  final Map project;

  const ProjectTile({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(project['title'], style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(project['description']),
          ],
        ),
      ),
    );
  }
}
