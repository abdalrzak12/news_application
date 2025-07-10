import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class LogoOnbording extends StatelessWidget {
  const LogoOnbording({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
            child: Container(
              child: SvgPicture.asset('assets/images/logo_onbording.svg'),
            ),
          );
  }
}