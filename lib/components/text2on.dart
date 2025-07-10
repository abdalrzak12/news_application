import 'package:flutter/material.dart';

class Text2on extends StatelessWidget {
  const Text2on({super.key,this.text});
  final text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(24, 8, 24, 54),
      child: Container(
        width: 347,
        child: Text(
          text,

          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          softWrap: true,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
