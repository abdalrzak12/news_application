import 'package:flutter/material.dart';

class ImageOn1 extends StatelessWidget {
  const ImageOn1({super.key,this.img});
  final img;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 24,
      child: Container(
        height: 326,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(12),
        ),
        child: Image.asset(img),
      ),
    );
  }
}
