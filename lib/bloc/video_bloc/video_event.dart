part of 'video_bloc.dart';

class VideoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class InitializeVideoProcess extends VideoEvent {
  InitializeVideoProcess({required this.controller});
  final VideoPlayerController controller;
}

class StartVideo extends VideoEvent {
  StartVideo({required this.controller});
  final VideoPlayerController controller;
}

class StopVideo extends VideoEvent {
  StopVideo({required this.controller});
  final VideoPlayerController controller;
}
