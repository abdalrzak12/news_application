import 'package:flutter/material.dart';

class Text1on extends StatelessWidget {
  const Text1on({super.key, this.text});
  final text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
