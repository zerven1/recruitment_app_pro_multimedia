part of 'video_bloc.dart';

class VideoState extends Equatable {
  @override
  List<Object?> get props => [];
}

class VideoInitial extends VideoState {}

class VideoLoading extends VideoState {}

class VideoPlaying extends VideoState {}

class VideoHiding extends VideoState {}

class VideoStopped extends VideoState {}

class VideoShowing extends VideoState {}

class VideoError extends VideoState {
  VideoError({required this.errorMessage});
  final String errorMessage;
}
