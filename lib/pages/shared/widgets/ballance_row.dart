import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mubanco/pages/shared/widgets/touchable_icon_widget.dart';

class BallanceRow extends StatelessWidget {
  const BallanceRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 26,
        top: 10,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Conta',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              TouchableIconWidget(
                icon: Icons.chevron_right_sharp,
                onTap: () {},
                color: Colors.black26,
                size: 30,
              )
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 10),
                child: const Text(
                  "R\$ 8.455,51",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
