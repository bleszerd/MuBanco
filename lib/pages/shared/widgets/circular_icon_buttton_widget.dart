import 'package:flutter/material.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class CircularIconButtonWidget extends StatelessWidget {
  final double? size;
  final IconData icon;
  final String? title;
  final bool? divider;

  const CircularIconButtonWidget({
    Key? key,
    required this.icon,
    this.divider = true,
    this.size,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      child: Padding(
        padding: EdgeInsets.only(right: divider == true ? 12 : 0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                width: 71,
                height: 71,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    color: Colors.black12,
                  ),
                  child: Icon(
                    icon,
                    size: size ?? 24,
                  ),
                ),
              ),
              if (title != null) ...[
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                ),
                Text(
                  title!,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
