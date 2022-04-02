import 'package:flutter/material.dart';
import 'package:mubanco/pages/shared/widgets/circular_icon_buttton_widget.dart';

class QuickActionsWidget extends StatelessWidget {
  const QuickActionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          children: const <Widget>[
            CircularIconButtonWidget(
              title: "Área Pix",
              icon: Icons.account_balance_wallet_outlined,
            ),
            CircularIconButtonWidget(
              title: "Pagar",
              icon: Icons.qr_code_2_outlined,
            ),
            CircularIconButtonWidget(
              title: "Investir",
              icon: Icons.bar_chart,
            ),
            CircularIconButtonWidget(
              title: "Transferir",
              icon: Icons.attach_money,
              divider: false,
            ),
          ],
        ),
      ),
    );
  }
}
