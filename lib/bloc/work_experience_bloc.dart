import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:portfolio/data/models/Work_experience.dart';
import 'package:portfolio/data/repository/my_repository.dart';

part 'work_experience_event.dart';
part 'work_experience_state.dart';

class WorkExperienceBloc
    extends Bloc<WorkExperienceEvent, WorkExperienceState> {
  late final MyRepository _myRepository;
  StreamSubscription? _subscription;

  WorkExperienceBloc({required MyRepository myRepository})
      : _myRepository = myRepository,
        super(WorkExperienceLoading());

  @override
  Stream<WorkExperienceState> mapEventToState(
    WorkExperienceEvent event,
  ) async* {
    if (event is LoadWorkExperience) {
      yield* _mapLoadWorkExperienceToState();
    }
    if (event is UpdateLoadWorkExperience) {
      yield* _mapUpdateWorkExperienceToState(event);
    }
  }

  Stream<WorkExperienceState> _mapLoadWorkExperienceToState() async* {
    _subscription?.cancel();
    _subscription = _myRepository.getAllWorkExperience().listen((works) {
      UpdateLoadWorkExperience(works);
    });
  }

  Stream<WorkExperienceState> _mapUpdateWorkExperienceToState(
      UpdateLoadWorkExperience event) async* {
    yield WorkExperienceLoaded(workExperience: event.workExperience);
  }
}
