import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final void Function()? onPressed;
  final String displayText;
  final Color color;
  final BorderRadius borderRadius;
  final double width;
  final Color textColor;
  final BoxShadow boxShadow;

  const RoundedButton(
      {Key? key,
      required this.onPressed,
      required this.displayText,
      required this.color,
      required this.borderRadius,
      required this.width,
      required this.textColor,
      required this.boxShadow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 10.0,
        color: color,
        borderRadius: borderRadius,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              boxShadow,
            ],
            borderRadius: borderRadius,
          ),
          child: MaterialButton(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onPressed: onPressed,
            minWidth: width,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Text(
                displayText,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: textColor,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
