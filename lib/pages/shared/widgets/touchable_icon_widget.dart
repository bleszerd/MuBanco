import 'package:flutter/material.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class TouchableIconWidget extends StatelessWidget {
  final Color? color;
  final IconData icon;
  final VoidCallback onTap;
  final double? size;

  const TouchableIconWidget({
    Key? key,
    required this.icon,
    this.color,
    required this.onTap,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TouchableOpacity(
        activeOpacity: .6,
        child: Icon(
          icon,
          color: color ?? Colors.white,
          size: size ?? 24,
        ),
      ),
    );
  }
}
