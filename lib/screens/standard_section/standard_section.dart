import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recruitment_app_pro_multimedia/bloc/video_bloc/video_bloc.dart';
import 'package:recruitment_app_pro_multimedia/screens/standard_section/components/standard_appbar.dart';
import 'package:video_player/video_player.dart';

/// Section with standard Appbar
class StandardSection extends StatelessWidget {
  const StandardSection({super.key, required this.controller});
  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    var videoBloc = BlocProvider.of<VideoBloc>(context);
    var state = videoBloc.state;

    // Fading animation with widget hide when its over
    return AnimatedOpacity(
      duration: const Duration(
        milliseconds: 500,
      ),
      opacity: state is VideoStopped ? 1 : 0,
      child: Visibility(
        visible: state is VideoStopped || state is VideoShowing,
        child: const StandardAppbar(),
      ),
    );
  }
}
