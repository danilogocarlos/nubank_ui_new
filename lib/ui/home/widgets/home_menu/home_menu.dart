import 'package:flutter/material.dart';
import 'package:nubank_new/ui/home/widgets/home_menu/item_menu.dart';

class HomeMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .55,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Text(
              "Agência 0001 Conta 000000-0",
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 5),
            Text(
              "Banco 260 - Nu Pagamentos S.A",
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  ItemMenu(icon: Icons.info_outline, text: "Me ajuda"),
                  ItemMenu(icon: Icons.person_outline, text: "Perfil"),
                  ItemMenu(
                      icon: Icons.settings_outlined, text: "Configurar conta"),
                  ItemMenu(
                      icon: Icons.credit_card_outlined,
                      text: "Configurar cartão"),
                  ItemMenu(
                      icon: Icons.store_mall_directory_outlined,
                      text: "Pedir conta PJ"),
                  ItemMenu(
                      icon: Icons.phone_android_outlined,
                      text: "Configurações do app"),
                  ItemMenu(icon: Icons.help_outline, text: "Sobre"),
                  SizedBox(height: 30),
                  Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(width: .7, color: Colors.white54),
                    ),
                    child: RaisedButton(
                      color: Colors.purple[700],
                      highlightColor: Colors.transparent,
                      elevation: 0,
                      focusElevation: 0,
                      hoverElevation: 0,
                      disabledElevation: 0,
                      highlightElevation: 0,
                      splashColor: Colors.purple[900],
                      child: Text(
                        "SAIR DO APP",
                        style: TextStyle(fontSize: 12),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
