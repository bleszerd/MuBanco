import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mubanco/pages/shared/widgets/profile_image_widget.dart';
import 'package:mubanco/pages/shared/widgets/touchable_icon_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade400,
      padding: EdgeInsets.only(bottom: 20, left: 20),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(0.0, 20.0, 20.0, 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProfileImageWidget(
                  backgroundColor: Colors.red.shade200,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: [
                      TouchableIconWidget(
                        icon: LineIcons.eye,
                        onTap: () {
                          print('Eye');
                        },
                      ),
                      TouchableIconWidget(
                        icon: LineIcons.infoCircle,
                        onTap: () {
                          print('Info');
                        },
                      ),
                      TouchableIconWidget(
                        icon: LineIcons.userPlus,
                        onTap: () {
                          print('Friends');
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              children: const [
                Text(
                  "Olá, Vinícius",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
