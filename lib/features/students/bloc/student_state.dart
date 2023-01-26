part of 'student_bloc.dart';

enum StudentStatus { loading, loaded }

class StudentState extends Equatable {
  final StudentStatus status;
  final List<Student> students;
  final Student? selectedStudent;

  const StudentState(
      {required this.status, required this.students, this.selectedStudent});

  @override
  List<Object?> get props => [status, students, selectedStudent];

  StudentState copyWith(
      {final StudentStatus? status,
      final List<Student>? students,
      final Student? selectedStudent}) {
    return StudentState(
        status: status ?? this.status,
        students: students ?? this.students,
        selectedStudent: selectedStudent ?? this.selectedStudent);
  }
}
