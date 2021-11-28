part of 'work_experience_bloc.dart';

@immutable
abstract class WorkExperienceState extends Equatable {
  const WorkExperienceState();

  @override
  List<Object?> get props => [];
}

class WorkExperienceLoading extends WorkExperienceState {}

class WorkExperienceLoaded extends WorkExperienceState {
  final List<WorkExperience> workExperience;

  const WorkExperienceLoaded({this.workExperience = const <WorkExperience>[]});

  @override
  List<Object?> get props => [workExperience];
}
