import 'package:flutter/material.dart';

class StyleDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFDDDDDD),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFFF0000),
                  offset: Offset(5.0, 5.0),
                  blurRadius: 8.0,
                )
              ],
              border: Border.all(color: Colors.black)
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'laji flutter',
                style: TextStyle(
                  color: Color(0xFFFF66CCFF),
                  fontWeight: FontWeight.w200,
                  fontSize: 20.0,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ),
      );
  }
}