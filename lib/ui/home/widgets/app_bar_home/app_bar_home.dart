import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  final bool showMoney;
  final bool showMenu;
  final Function onMoneyPressed;
  final Function onMenuPressed;

  const AppBarHome(
      {this.showMoney, this.showMenu, this.onMoneyPressed, this.onMenuPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Olá, Danilo',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            showMenu
                ? Ink(
                    decoration: ShapeDecoration(
                      color: Colors.white.withOpacity(.07),
                      shape: CircleBorder(),
                    ),
                    child: IconButton(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      color: Colors.white,
                      icon: Icon(
                        showMoney
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                      ),
                      onPressed: onMoneyPressed,
                    ),
                  )
                : SizedBox.shrink(),
            SizedBox(width: 10),
            Ink(
              decoration: ShapeDecoration(
                color: Colors.white.withOpacity(.07),
                shape: CircleBorder(),
              ),
              child: IconButton(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                color: Colors.white,
                icon: Icon(
                  showMenu ? Icons.settings_outlined : Icons.close,
                ),
                onPressed: onMenuPressed,
              ),
            ),
          ],
        )
      ],
    );
  }
}
