import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recruitment_app_pro_multimedia/bloc/video_bloc/video_bloc.dart';
import 'package:recruitment_app_pro_multimedia/screens/video_section/components/video_appbar.dart';
import 'package:video_player/video_player.dart';

/// Video Section class with animation controlling
class VideoSection extends StatefulWidget {
  const VideoSection({
    super.key,
    required this.controller,
  });
  final VideoPlayerController controller;

  @override
  State<VideoSection> createState() => _VideoSectionState();
}

class _VideoSectionState extends State<VideoSection> {
  @override
  Widget build(BuildContext context) {
    var videoBloc = BlocProvider.of<VideoBloc>(context);
    var videoState = videoBloc.state;

    // Fading animation with widget hide after its over
    return AnimatedOpacity(
      duration: const Duration(
        milliseconds: 500,
      ),
      opacity: videoState is VideoPlaying ? 1 : 0,
      child: Visibility(
        visible: videoState is VideoPlaying || videoState is VideoHiding,
        child: VideoAppbar(
          controller: widget.controller,
        ),
      ),
    );
  }
}
