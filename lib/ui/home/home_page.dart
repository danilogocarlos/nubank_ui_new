import 'package:flutter/material.dart';
import 'package:nubank_new/ui/home/widgets/bottom_menu/bottom_menu.dart';
import 'package:nubank_new/ui/home/widgets/home_boxes/list_cards_home.dart';
import 'package:nubank_new/ui/home/widgets/home_menu/home_menu.dart';

import 'widgets/app_bar_home/app_bar_home.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMoney = false;
  bool _showMenu = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[700],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.13,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: AppBarHome(
                    showMoney: _showMoney,
                    showMenu: _showMenu,
                    onMoneyPressed: () {
                      setState(() => _showMoney = !_showMoney);
                    },
                    onMenuPressed: () {
                      setState(() => _showMenu = !_showMenu);
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: _showMenu ? ListCardsHome(_showMoney) : HomeMenu(),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.16,
              child: BottomMenu(),
            ),
          ],
        ),
      ),
    );
  }
}
