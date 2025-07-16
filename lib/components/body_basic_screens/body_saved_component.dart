import 'package:flutter/material.dart';
import 'package:news_application1/components/TapBar.dart';
import 'package:news_application1/components/card_user_data.dart';

class BodySavedComponent extends StatelessWidget {
  const BodySavedComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardUserData(),
        SizedBox(height: 16),
        Expanded(child: Tapbar()),
      ],
    );
  }
}
