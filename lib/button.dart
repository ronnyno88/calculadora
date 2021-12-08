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
    bgColor = Colors.purple;
  }

  Button.blue({this.label, this.onTap}) {
    bgColor = Colors.blue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: bgColor,
          child: Center(
            child: Text(
              label!,
              style: TextStyle(color: textColor),
            ),
          ),
        ),
      ),
    );
  }
}
