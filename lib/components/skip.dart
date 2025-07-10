import 'package:flutter/material.dart';

class Skip extends StatelessWidget {
  const Skip({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        "تخطي",
        style: TextStyle(
          fontSize: 14,
          fontFamily: 'Arabic',
          fontWeight: FontWeight.w600,
          color: Color(0xFFA9A9A9),
        ),
      ),
    );
  }
}
