import 'package:flutter/material.dart';

class DefaultBlueTitle extends StatelessWidget {
  final String title;
  const DefaultBlueTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent, width: 3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.blueAccent,
          color: Colors.white,
        ),
      ),
    );
  }
}
