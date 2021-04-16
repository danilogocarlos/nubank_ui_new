import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final IconData icon;
  final String text;

  const ItemMenu({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: .7, color: Colors.white54),
          top: BorderSide(width: .7, color: Colors.white54),
        ),
      ),
      child: RaisedButton(
        color: Colors.purple[700],
        highlightColor: Colors.transparent,
        elevation: 0,
        focusElevation: 0,
        hoverElevation: 0,
        disabledElevation: 0,
        highlightElevation: 0,
        splashColor: Colors.purple[600],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon),
                SizedBox(width: 10),
                Text(
                  text,
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
            Icon(
              Icons.chevron_right,
              size: 16,
            )
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
