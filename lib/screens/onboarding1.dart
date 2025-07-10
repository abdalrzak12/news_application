import 'package:flutter/material.dart';
import 'package:news_application1/components/elevatedbutton.dart';
import 'package:news_application1/components/image_on1.dart';
import 'package:news_application1/components/logo_onbording.dart';
import 'package:news_application1/components/skip.dart';
import 'package:news_application1/components/text1on.dart';
import 'package:news_application1/components/text2on.dart';
import 'package:news_application1/screens/home_screen.dart';
import 'package:news_application1/screens/onbording2.dart';

class onboarding1 extends StatelessWidget {
  const onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24),
              LogoOnbording(),

              SizedBox(height: 26),

              Container(
                height: 670,
                width: double.infinity,

                child: Stack(
                  children: [
                    Positioned(
                      top: 122,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 548,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFF06332E),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 223),
                            Image.asset('assets/images/slaider_on1.png'),
                            SizedBox(height: 37),

                            Text1on(text: "مرحبًا بك في الأخبارية"),

                            Text2on(
                              text:
                                  "كل ما تحتاج معرفته في مكان واحد , تابع آخر الأخبار  لحظة بلحظة من مصادر موثوقة",
                            ),

                            Elevatedbutton(
                              text: "التالي",
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Onbording2(),
                                  ),
                                );
                              },
                            ),

                            SizedBox(height: 14),
                            Skip(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),

                    ImageOn1(img: 'assets/images/on1.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
