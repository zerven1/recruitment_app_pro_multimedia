import 'dart:io';

import 'package:flutter/material.dart';
import 'package:recruitment_app_pro_multimedia/screens/video_section/components/icon_widget.dart';
import 'package:video_player/video_player.dart';

class VideoAppbar extends StatefulWidget {
  const VideoAppbar({super.key, required this.controller});
  final VideoPlayerController controller;

  @override
  State<VideoAppbar> createState() => _VideoAppbarState();
}

class _VideoAppbarState extends State<VideoAppbar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  /// Get Top padding based on device type
  double getIconTopPadding() {
    if (Platform.isIOS) {
      return MediaQuery.paddingOf(context).top;
    }
    return MediaQuery.paddingOf(context).top + 8;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: widget.controller.value.aspectRatio,
          child: VideoPlayer(widget.controller),
        ),
        Positioned(
          left: 24,
          top: getIconTopPadding(),
          child: const IconWidget(),
        ),
        Positioned(
          top: getIconTopPadding(),
          right: 24,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconWidget(icon: Icons.favorite_outline),
              SizedBox(
                width: 6,
              ),
              IconWidget(icon: Icons.search),
            ],
          ),
        ),
      ],
    );
  }
}
