import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final onTap;
  Color? bgColor;
  Color textColor = Colors.white;
  final String? label;

  Button.red({this.label, this.onTap}) {
    bgColor = Colors.red;
  }

  Button.orange({this.label, this.onTap}) {
    bgColor = Colors.orange;
  }

  Button.purple({this.label, this.onTap}) {
    bgColor = Colors.cyan;
  }

  Button.blue({this.label, this.onTap}) {
    bgColor = Colors.blue;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: onTap,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              color: bgColor,
              child: Center(
                child: Text(
                  label!,
                  style: TextStyle(color: textColor, fontSize: 30),
                ),
              ),
            ),
          ),
      ),
    );
  }
}
