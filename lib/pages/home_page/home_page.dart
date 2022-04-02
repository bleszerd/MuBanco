import 'package:flutter/material.dart';
import 'package:mubanco/pages/home_page/widgets/header_widget.dart';
import 'package:mubanco/pages/home_page/widgets/quick_actions_widget.dart';
import 'package:mubanco/pages/shared/widgets/ballance_row.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: const [
            HeaderWidget(),
            BallanceRow(),
            QuickActionsWidget(),
          ],
        ),
      ),
    );
  }
}
