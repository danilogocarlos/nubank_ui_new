import 'package:flutter/material.dart';

class HomeBoxInfo extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget content;
  final Widget callToAction;

  const HomeBoxInfo({
    this.icon,
    this.title,
    this.content,
    this.callToAction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.black54),
              SizedBox(width: 15),
              Text(
                title,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                ),
              )
            ],
          ),
          SizedBox(height: 25),
          content ?? SizedBox.shrink(),
          SizedBox(height: 25),
          callToAction ?? SizedBox.shrink(),
        ],
      ),
    );
  }
}
