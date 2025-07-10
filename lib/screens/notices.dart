import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:news_application1/components/card_notices.dart';
import 'package:news_application1/models/notice_model.dart';

class Notices extends StatelessWidget {
  const Notices({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(24, 55, 24, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "الإشعارات",
                    style: TextStyle(
                      fontFamily: 'Arabic',
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFE4E9E8),
                      ),
                      child: Icon(Icons.arrow_forward),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 28),
            Padding(
              padding: EdgeInsetsDirectional.only(start: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "الاحدث",
                    style: TextStyle(
                      fontFamily: 'Arabic',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            StreamBuilder(
              stream: NoticeModel.streamAll(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else {
                  return Expanded(
                    child: ListView.builder(
                      itemCount: snapshot.data?.length ?? 0,
                      itemBuilder: (context, index) {
                        final data = snapshot.data!;
                        return CardNotices(
                          onLongPress: () {},
                          text1: data[index].title,
                          text2: data[index].content,
                          iconcard:
                              data[index].type
                                  ? Icon(
                                    Icons.info_outline,
                                    color: Color(0xffB42318),
                                  )
                                  : SvgPicture.asset("assets/svg/iconapp.svg"),

                          colorcontainer1:
                              data[index].type
                                  ? Color(0xffB42318)
                                  : Color(0xFF06332E),
                        );
                      },
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
