import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recruitment_app_pro_multimedia/bloc/video_bloc/video_bloc.dart';
import 'package:recruitment_app_pro_multimedia/screens/recomended_section/recomended_section.dart';
import 'package:recruitment_app_pro_multimedia/screens/standard_section/standard_section.dart';
import 'package:recruitment_app_pro_multimedia/screens/video_section/video_section.dart';
import 'package:video_player/video_player.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  /// Declare controller for video
  late VideoPlayerController controller;

  /// Creating bloc instance
  VideoBloc videoBloc = VideoBloc();

  @override
  void initState() {
    super.initState();

    /// Getting video from assets
    controller = VideoPlayerController.asset("assets/videos/film.mp4");

    /// Initialize video event
    videoBloc.add(InitializeVideoProcess(controller: controller));

    /// Add listener for video end
    controller.addListener(onVideoEnd);
  }

  /// Remove listener and dispose controller
  @override
  void dispose() {
    controller.removeListener(onVideoEnd);
    controller.dispose();
    super.dispose();
  }

  /// Change screen after video ended
  void onVideoEnd() {
    if (controller.value.position == controller.value.duration &&
        videoBloc.state is VideoPlaying) {
      videoBloc.add(StopVideo(controller: controller));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => videoBloc,
      child: BlocListener<VideoBloc, VideoState>(
        listener: (context, state) {},
        child: BlocBuilder<VideoBloc, VideoState>(
          builder: (context, state) {
            return Scaffold(
              body: state is VideoInitial
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      children: [
                        VideoSection(
                          controller: controller,
                        ),
                        StandardSection(
                          controller: controller,
                        ),
                        RecomendedSection(
                          controller: controller,
                        ),
                      ],
                    ),
            );
          },
        ),
      ),
    );
  }
}
