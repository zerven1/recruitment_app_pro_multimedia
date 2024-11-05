import 'package:flutter/material.dart';
import 'package:recruitment_app_pro_multimedia/screens/video_section/components/icon_widget.dart';

/// Icon widget with outlined border
class IconWidgetOutlined extends IconWidget {
  const IconWidgetOutlined({
    super.key,
    super.backgroundColor,
    super.icon,
    super.iconSize,
    super.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: super.build(context),
    );
  }
}
