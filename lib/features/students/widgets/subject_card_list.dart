import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_teacher_dashboard_app/core/styles.dart';
import 'package:flutter_teacher_dashboard_app/features/students/bloc/student_bloc.dart';

class SubjectCardList extends StatelessWidget {
  const SubjectCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentBloc, StudentState>(
      builder: (context, state) {
        return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: state.selectedStudent!.subjects.length,
            itemBuilder: ((context, index) {
              return SubjectCardItem(
                title: state.selectedStudent!.subjects[index].title,
                grade: state.selectedStudent!.subjects[index].grade,
              );
            }));
      },
    );
  }
}

class SubjectCardItem extends StatelessWidget {
  final String title;
  final double grade;

  const SubjectCardItem({Key? key, required this.title, required this.grade})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        height: 65,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 35),
        decoration: BoxDecoration(
            color: primaryColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            Text(
              'Grade: $grade',
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
