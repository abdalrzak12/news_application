import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:news_application1/screens/home_screen.dart';
import 'package:news_application1/screens/onboarding1.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final storage = GetStorage();
  @override
  void initState() {
    super.initState();
    bool isLoggedIn = storage.read('isLoggedIn') ?? false;

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => isLoggedIn ? HomeScreen() : onboarding1(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF06332E),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [SvgPicture.asset('assets/images/logo.svg')],
          ),
        ),
      ),
    );
  }
}
