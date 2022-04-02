import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ProfileImageWidget extends StatelessWidget {
  final Color backgroundColor;
  final Color? color;

  const ProfileImageWidget({
    Key? key,
    required this.backgroundColor,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: Icon(
        LineIcons.byName('user'),
        color: color ?? Colors.white,
      ),
    );
  }
}
