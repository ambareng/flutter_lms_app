part of 'student_bloc.dart';

abstract class StudentEvent extends Equatable {
  const StudentEvent();

  @override
  List<Object> get props => [];
}

class StudentGetAllEvent extends StudentEvent {}

class StudentViewEvent extends StudentEvent {
  final Student student;

  const StudentViewEvent({required this.student});

  @override
  List<Object> get props => [student];
}

class StudentSearchEvent extends StudentEvent {
  final String searchTerm;

  const StudentSearchEvent({required this.searchTerm});

  @override
  List<Object> get props => [searchTerm];
}
