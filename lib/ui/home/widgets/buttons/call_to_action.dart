import 'package:flutter/material.dart';

class CallToAction extends StatelessWidget {
  final Function onPressed;
  final String title;

  const CallToAction({
    @required this.onPressed,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        side: MaterialStateProperty.all(BorderSide(color: Colors.purple)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3.0),
          ),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.purple,
          fontWeight: FontWeight.w700,
          fontSize: 12,
        ),
      ),
    );
  }
}
