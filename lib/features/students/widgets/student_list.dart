import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_teacher_dashboard_app/core/styles.dart';
import 'package:flutter_teacher_dashboard_app/core/widgets/spinner.dart';
import 'package:flutter_teacher_dashboard_app/features/students/bloc/student_bloc.dart';
import 'package:flutter_teacher_dashboard_app/features/students/widgets/student_list_item.dart';

class StudentList extends StatelessWidget {
  const StudentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<StudentBloc, StudentState>(
        builder: (context, state) {
          if (state.status == StudentStatus.loading) {
            return const Center(
              child: Spinner(
                size: 0.1,
                color: primaryColor,
              ),
            );
          }
          return ListView.builder(
              padding:
                  const EdgeInsets.only(top: 0, left: 0, right: 0, bottom: 50),
              itemCount: state.students.length,
              itemBuilder: (context, index) {
                return StudentListItem(
                  student: state.students[index],
                );
              });
        },
      ),
    );
  }
}
