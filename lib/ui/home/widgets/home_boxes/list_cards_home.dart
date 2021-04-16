import 'package:flutter/material.dart';
import 'package:nubank_new/ui/home/widgets/buttons/call_to_action.dart';
import 'package:nubank_new/ui/home/widgets/home_boxes/home_box_cta.dart';
import 'package:nubank_new/ui/home/widgets/home_boxes/home_box_info.dart';

class ListCardsHome extends StatelessWidget {
  final bool _showMoney;

  ListCardsHome(this._showMoney);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        HomeBoxCTA(
          icon: Icons.healing_outlined,
          title: "Seguro de vida",
          description:
              "Conheça Nubank Vida: um seguro simples que cabe no bolso.",
          callToAction: CallToAction(
            onPressed: null,
            title: "CONHECER",
          ),
        ),
        SizedBox(height: 15),
        HomeBoxInfo(
          icon: Icons.credit_card_outlined,
          title: "Cartão de crédito",
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Fatura atual",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 15),
              _showMoney
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "R\$ 128,02",
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(height: 5),
                        RichText(
                          text: TextSpan(
                            text: "Limite disponível ",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 12,
                            ),
                            children: [
                              TextSpan(
                                text: "R\$ 4.987,84 ",
                                style: TextStyle(
                                  color: Colors.green[800],
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Container(
                      color: Colors.black12,
                      width: double.infinity,
                      height: 47,
                    ),
            ],
          ),
        ),
        SizedBox(height: 15),
        HomeBoxInfo(
          icon: Icons.monetization_on_outlined,
          title: "Conta",
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Saldo disponível",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 15),
              _showMoney
                  ? Text(
                      "R\$ 14.987,04",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    )
                  : Container(
                      color: Colors.black12,
                      width: double.infinity,
                      height: 28,
                    ),
            ],
          ),
        ),
        SizedBox(height: 15),
        HomeBoxInfo(
          icon: Icons.attach_money_outlined,
          title: "Empréstimo",
          content: _showMoney
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Valor disponível de até",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "R\$ 140.000,09",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              : Container(
                  color: Colors.black12,
                  width: double.infinity,
                  height: 35,
                ),
          callToAction: CallToAction(
            onPressed: null,
            title: "SIMULAR EMPRÉSTIMO",
          ),
        ),
        SizedBox(height: 15),
        HomeBoxCTA(
          icon: Icons.card_giftcard_outlined,
          title: "Rewards",
          description: "Pague compras com pontos que nunca expiram.",
          callToAction: CallToAction(
            onPressed: null,
            title: "CONHECER",
          ),
        ),
        SizedBox(height: 15),
        HomeBoxInfo(
          icon: Icons.credit_card_outlined,
          title: "Google Pay",
          content: Text(
            "Use o Google Pay com seus cartões Nubank",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 12,
            ),
          ),
          callToAction: CallToAction(
            onPressed: null,
            title: "REGISTRAR MEU CARTÃO",
          ),
        ),
      ],
    );
  }
}
