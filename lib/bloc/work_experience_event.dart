part of 'work_experience_bloc.dart';

@immutable
abstract class WorkExperienceEvent extends Equatable {
  const WorkExperienceEvent();

  @override
  List<Object?> get props => [];
}

class LoadWorkExperience extends WorkExperienceEvent {}

class UpdateLoadWorkExperience extends WorkExperienceEvent {
  final List<WorkExperience> workExperience;

  const UpdateLoadWorkExperience(this.workExperience);

  @override
  List<Object?> get props => [workExperience];
}
