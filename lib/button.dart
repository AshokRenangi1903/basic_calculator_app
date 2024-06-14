import 'package:flutter/material.dart';
// just for fun

class EachButton extends StatelessWidget {
  final text;
  final bgColor;
  final textColor;
  final buttonTapped;
  const EachButton(
      {super.key, this.text, this.bgColor, this.textColor, this.buttonTapped});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: buttonTapped,
        child: Container(
          margin: EdgeInsets.fromLTRB(1, 1, 1, 1),
          height: 70,
          // width: 70,
          color: bgColor,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontSize: 42,
            ),
          ),
        ),
      ),
    );
  }
}
