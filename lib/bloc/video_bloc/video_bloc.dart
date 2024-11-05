import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

part 'video_event.dart';
part 'video_state.dart';

class VideoBloc extends Bloc<VideoEvent, VideoState> {
  VideoBloc() : super(VideoInitial()) {
    on<InitializeVideoProcess>(_initializeVideoProcess);
    on<StartVideo>(_startVideo);
    on<StopVideo>(_stopVideo);
  }

  void _initializeVideoProcess(
      InitializeVideoProcess event, Emitter<VideoState> emit) async {
    try {
      await event.controller.initialize();
      emit(VideoPlaying());
      event.controller.play();
    } catch (e) {
      emit(VideoError(errorMessage: e.toString()));
    }
  }

  void _startVideo(StartVideo event, Emitter<VideoState> emit) async {
    try {
      emit(VideoShowing());
      await Future.delayed(const Duration(milliseconds: 500), () async {});
      emit(VideoPlaying());
      event.controller.play();
    } catch (e) {
      emit(
        VideoError(errorMessage: e.toString()),
      );
    }
  }

  void _stopVideo(StopVideo event, Emitter<VideoState> emit) async {
    try {
      emit(VideoHiding());
      await Future.delayed(
        const Duration(milliseconds: 500),
      );
      emit(VideoStopped());
      event.controller.seekTo(const Duration(microseconds: 0));
      event.controller.pause();
    } catch (e) {
      emit(VideoError(errorMessage: e.toString()));
    }
  }
}
