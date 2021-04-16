import 'package:flutter/material.dart';
import 'package:nubank_new/ui/home/widgets/bottom_menu/item_menu_bottom.dart';

class BottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 80.0, end: 0.0),
      duration: Duration(milliseconds: 400),
      curve: Curves.easeOut,
      builder: (context, value, child) {
        return Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(width: 10),
              ItemMenuBottom(
                icon: Icons.person_add_alt_1_outlined,
                text: "Indicar amigos",
              ),
              ItemMenuBottom(
                icon: Icons.phone_android_outlined,
                text: "Recarga de celular",
              ),
              ItemMenuBottom(
                icon: Icons.arrow_upward,
                text: "Transferir",
              ),
              ItemMenuBottom(
                icon: Icons.arrow_downward,
                text: "Depositar",
              ),
              ItemMenuBottom(
                icon: Icons.messenger_outline,
                text: "Cobrar",
              ),
              ItemMenuBottom(
                icon: Icons.monetization_on_outlined,
                text: "Empréstimos",
              ),
              ItemMenuBottom(
                icon: Icons.format_align_center,
                text: "Ajustar limite",
              ),
              ItemMenuBottom(
                icon: Icons.attach_money_outlined,
                text: "Pagar",
              ),
              ItemMenuBottom(
                icon: Icons.lock_open,
                text: "Bloquear cartão",
              ),
              SizedBox(width: 10),
            ],
          ),
        );
      },
    );
  }
}
