import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPlaceholder extends StatelessWidget {
  const ShimmerPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 20, width: 200, color: Colors.white),
            const SizedBox(height: 10),
            Container(height: 20, width: 150, color: Colors.white),
            const SizedBox(height: 10),
            Container(height: 20, width: 100, color: Colors.white),
            const SizedBox(height: 20),
            Container(height: 200, width: double.infinity, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
