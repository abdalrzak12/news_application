import 'package:flutter/material.dart';

class CardNotices extends StatelessWidget {
  const CardNotices({
    super.key,
    required this.text1,
    required this.text2,
    required this.iconcard,
    this.colorcontainer1,
    required this.onLongPress,
  });
  final String text1;
  final String text2;
  final Widget iconcard;
  final Color? colorcontainer1;
  final VoidCallback onLongPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(24, 8, 24, 12),
      child: InkWell(
        onLongPress: onLongPress,
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: colorcontainer1 ?? const Color(0xFF06332E),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Container(
            margin: EdgeInsetsDirectional.only(start: 8),
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              border: Border.all(width: 1, color: Color(0xFFD2D6DB)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffE4E9E8),
                    ),
                    child: iconcard,
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text1,
                          style: TextStyle(
                            fontFamily: 'Arabic',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          text2,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'Arabic',
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
