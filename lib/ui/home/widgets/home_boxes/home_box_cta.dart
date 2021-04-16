import 'package:flutter/material.dart';

class HomeBoxCTA extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final Widget callToAction;

  const HomeBoxCTA({
    @required this.icon,
    @required this.title,
    @required this.description,
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
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.purple[100],
                child: Icon(icon, color: Colors.purple),
              ),
              SizedBox(width: 15),
              Text(
                title,
                style: TextStyle(color: Colors.purple[700], fontSize: 20),
              )
            ],
          ),
          SizedBox(height: 25),
          Text(
            description,
            style: TextStyle(color: Colors.black87),
          ),
          SizedBox(height: 25),
          callToAction ?? SizedBox.shrink(),
        ],
      ),
    );
  }
}
