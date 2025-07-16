import 'package:flutter/material.dart';

class CardSaved extends StatelessWidget {
  const CardSaved({
    super.key,
    required this.text1,
    required this.text2,
    required this.img,
    required this.onTap,
  });
  final String text1;
  final String text2;
  final String img;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(height: 129, width: 147, child: Image.asset('${img}')),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text(
                      text1,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      text2,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
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
