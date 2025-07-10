import 'package:flutter/material.dart';
import 'package:news_application1/components/card_saved.dart';

class Local extends StatelessWidget {
  const Local({super.key});

  @override
  Widget build(BuildContext context) {
    return CardSaved(
      text1: 'وزير الخارجية يقود مرحلة الانفتاح الدبلوماسي',
      text2:
          "في تحوّل بارز على مستوى العلاقات الدولية، يتصدّر وزير الخارجية جهود تعزيز الحضور .......",
      img: Image.asset('assets/images/card_saved.png'),
    );
  }
}
