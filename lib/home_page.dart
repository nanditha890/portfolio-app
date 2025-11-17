import 'package:flutter/material.dart';
import 'data/portfolio_data.dart';
import 'widgets/section_title.dart';
import 'widgets/skill_chip.dart';
import 'widgets/info_tile.dart';
import 'widgets/project_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Portfolio"), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Center(
            child: Column(
              children: [
                CircleAvatar(radius: 60, child: Icon(Icons.person, size: 60)),
                SizedBox(height: 10),
                Text(portfolio.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                Text(portfolio.email),
                Text(portfolio.phone),
                Text(portfolio.linkedin),
              ],
            ),
          ),
          SizedBox(height: 20),
          SectionTitle(title: "Professional Summary"),
          Text(portfolio.summary),
          SizedBox(height: 20),
          SectionTitle(title: "Education"),
          ...portfolio.education.map((e) => InfoTile(title: e['title'], subtitle: e['subtitle'])),
          SizedBox(height: 20),
          SectionTitle(title: "Skills"),
          Wrap(spacing: 8, children: portfolio.skills.map((s) => SkillChip(skill: s)).toList()),
          SizedBox(height: 20),
          SectionTitle(title: "Experience"),
          ...portfolio.experience.map((e) => InfoTile(title: e['title'], subtitle: e['subtitle'])),
          SizedBox(height: 20),
          SectionTitle(title: "Projects"),
          ...portfolio.projects.map((p) => ProjectTile(project: p)),
          SizedBox(height: 20),
          SectionTitle(title: "Certifications"),
          ...portfolio.certifications.map((c) => InfoTile(title: c['title'], subtitle: c['subtitle'])),
          SizedBox(height: 20),
          SectionTitle(title: "Extracurricular Activities"),
          ...portfolio.activities.map((a) => InfoTile(title: a['title'], subtitle: a['subtitle'])),
        ],
      ),
    );
  }
}
