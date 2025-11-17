import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  final String title;
  final String subtitle;

  const InfoTile({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(title, style: TextStyle(fontWeight: FontWeight.w600)), subtitle: Text(subtitle));
  }
}
