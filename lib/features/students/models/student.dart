import 'package:flutter_teacher_dashboard_app/features/students/models/subject.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'student.freezed.dart';
part 'student.g.dart';

@freezed
class Student with _$Student {
  const factory Student({
    required int id,
    required String firstName,
    String? middleName,
    required String lastName,
    required String imageURL,
    required int age,
    required String course,
    required int year,
    required List<Subject> subjects,
  }) = _Student;

  factory Student.fromJson(Map<String, Object?> json) =>
      _$StudentFromJson(json);
}
