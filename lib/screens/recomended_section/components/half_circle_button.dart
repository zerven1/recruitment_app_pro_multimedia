import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recruitment_app_pro_multimedia/bloc/video_bloc/video_bloc.dart';
import 'package:video_player/video_player.dart';

class HalfCircleButton extends StatelessWidget {
  const HalfCircleButton({super.key, required this.controller});
  final VideoPlayerController controller;

  /// On button tap function based on actual [VideoBloc] state
  void onTap(VideoBloc videoBloc) {
    switch (videoBloc.state) {
      case VideoPlaying _:
        videoBloc.add(StopVideo(controller: controller));
        break;
      case VideoStopped _:
        videoBloc.add(StartVideo(controller: controller));
    }
  }

  @override
  Widget build(BuildContext context) {
    var videoBloc = BlocProvider.of<VideoBloc>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () => onTap(videoBloc),
          child: ClipPath(
            clipper: const HalfCircleClipper(side: CircleSide.top),
            child: Container(
              width: 50,
              height: 25,
              color: const Color(0xff0ddeae),
              child: const Center(
                child: Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Colors.white,
                  size: 28,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        )
      ],
    );
  }
}

/// Enum for Half Circle, its possible to add new directions
enum CircleSide { top }

/// Drawing half circle function
extension ToPath on CircleSide {
  Path toPath(Size size) {
    var path = Path();

    late Offset offset;
    late bool clockwise;

    path.moveTo(0, 0);
    offset = Offset(size.width, 0);
    clockwise = false;

    path.arcToPoint(offset,
        radius: Radius.elliptical(size.width / 2, size.height),
        clockwise: clockwise);
    path.close();
    return path;
  }
}

/// Half circle clipper based on path
class HalfCircleClipper extends CustomClipper<Path> {
  final CircleSide side;
  const HalfCircleClipper({
    required this.side,
  });
  @override
  Path getClip(Size size) => side.toPath(size);
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
