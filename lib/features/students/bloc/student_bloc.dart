import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_teacher_dashboard_app/features/students/models/student.dart';
import 'package:flutter_teacher_dashboard_app/features/students/repositories/student_repo.dart';

part 'student_event.dart';
part 'student_state.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  final StudentRepo studentRepo;

  StudentBloc({required this.studentRepo})
      : super(const StudentState(status: StudentStatus.loading, students: [])) {
    on<StudentGetAllEvent>((event, emit) async {
      emit(state.copyWith(
          status: StudentStatus.loading, selectedStudent: null, students: []));
      await Future.delayed(const Duration(seconds: 1));
      final List<Student> students = await studentRepo.getAllStudents();
      emit(state.copyWith(
          status: StudentStatus.loaded,
          selectedStudent: null,
          students: students));
    });
    on<StudentViewEvent>((event, emit) async {
      emit(state.copyWith(selectedStudent: event.student));
    });
    on<StudentSearchEvent>((event, emit) async {
      emit(state.copyWith(
          status: StudentStatus.loading, students: [], selectedStudent: null));
      final List<Student> students =
          await studentRepo.searchStudent(searchTerm: event.searchTerm);
      emit(state.copyWith(status: StudentStatus.loaded, students: students));
    });

    add(StudentGetAllEvent());
  }
}
