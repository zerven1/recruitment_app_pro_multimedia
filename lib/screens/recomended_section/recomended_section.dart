import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recruitment_app_pro_multimedia/bloc/video_bloc/video_bloc.dart';
import 'package:recruitment_app_pro_multimedia/constants/constants.dart';
import 'package:recruitment_app_pro_multimedia/screens/recomended_section/components/half_circle_button.dart';
import 'package:recruitment_app_pro_multimedia/screens/recomended_section/components/recomended_list.dart';
import 'package:recruitment_app_pro_multimedia/screens/recomended_section/components/recomended_title.dart';
import 'package:video_player/video_player.dart';

/// Recomended Section
class RecomendedSection extends StatelessWidget {
  const RecomendedSection({super.key, required this.controller});
  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    var videoState = BlocProvider.of<VideoBloc>(context);
    return Expanded(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        decoration: BoxDecoration(
          color: videoState is VideoPlaying
              ? Colors.white
              : standarSectionBackgroundColor,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HalfCircleButton(
              controller: controller,
            ),
            const RecomendedTitle("Polecane"),
            const RecomendedList(),
          ],
        ),
      ),
    );
  }
}
