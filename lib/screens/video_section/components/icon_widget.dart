import 'package:flutter/material.dart';
import 'package:recruitment_app_pro_multimedia/constants/constants.dart';

/// Icon widget with background
class IconWidget extends StatelessWidget {
  const IconWidget({
    super.key,
    this.icon = Icons.menu,
    this.backgroundColor = iconBackgroundColor,
    this.iconColor = iconMainColor,
    this.iconSize = 18,
  });
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: 14,
      child: Center(
        child: Icon(
          icon,
          size: iconSize,
          color: iconColor,
        ),
      ),
    );
  }
}
