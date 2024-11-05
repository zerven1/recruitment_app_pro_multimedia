import 'package:flutter/material.dart';

class RecomendedListWidget extends StatelessWidget {
  const RecomendedListWidget({
    super.key,
    this.height = RecomendedListItemHeight.big,
    this.backgroundColor = Colors.blue,
    this.icon = const Icon(Icons.favorite_border_outlined),
    this.title = "Default title",
    this.backgroundImagePath,
  });
  final RecomendedListItemHeight height;
  final Color backgroundColor;
  final Widget icon;
  final String title;
  final String? backgroundImagePath;

  /// get [RecomendedListWidget] height based on enum value
  double getHeight() {
    switch (height) {
      case RecomendedListItemHeight.small:
        return 90;
      case RecomendedListItemHeight.medium:
        return 140;
      case RecomendedListItemHeight.big:
        return 180;
      default:
        return 180;
    }
  }

  /// Set background image if path is given
  DecorationImage? getBackgroundImage() {
    return backgroundImagePath != null
        ? DecorationImage(
            image: AssetImage(backgroundImagePath!), fit: BoxFit.fill)
        : null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
        image: getBackgroundImage(),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 12,
            right: 12,
            child: icon,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(
                bottom: 12,
                left: 12,
                right: 12,
              ),
              color: backgroundImagePath != null
                  ? const Color.fromRGBO(0, 0, 0, 0.3)
                  : null,
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Enum for different types of [RecomendedListWidget]
enum RecomendedListItemHeight {
  small,
  medium,
  big,
}
