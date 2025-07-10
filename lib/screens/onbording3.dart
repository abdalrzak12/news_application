import 'package:flutter/material.dart';
import 'package:news_application1/components/elevatedbutton.dart';
import 'package:news_application1/components/image_on1.dart';
import 'package:news_application1/components/logo_onbording.dart';
import 'package:news_application1/components/text1on.dart';
import 'package:news_application1/components/text2on.dart';
import 'package:news_application1/screens/home_screen.dart';

class Onbording3 extends StatelessWidget {
  const Onbording3({super.key});

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
                            SizedBox(height: 260),
                            Image.asset('assets/images/slaider_on3.png'),

                            Text1on(text: "ابقَ على اطلاع دائم"),

                            Text2on(
                              text:
                                  "فعل الإشعارات لتصلك أهم الأخبار والتنبيهات العاجلة أولًا بأول",
                            ),

                            Elevatedbutton(
                              text: "أبدأ الآن",
                              onPressed: () {
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

                    ImageOn1(img: 'assets/images/on3.png'),
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
