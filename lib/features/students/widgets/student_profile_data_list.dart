import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_teacher_dashboard_app/core/styles.dart';
import 'package:flutter_teacher_dashboard_app/features/students/bloc/student_bloc.dart';
import 'package:flutter_teacher_dashboard_app/features/students/widgets/student_profile_data.dart';
import 'package:flutter_teacher_dashboard_app/features/students/widgets/subject_card_list.dart';
import 'package:gap/gap.dart';

class StudentProfileDataList extends StatelessWidget {
  const StudentProfileDataList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StudentBloc, StudentState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StudentProfileData(
              label: 'ID Number',
              value: 'ID-0000${state.selectedStudent!.id}',
            ),
            StudentProfileData(
              label: 'First name',
              value: state.selectedStudent!.firstName,
            ),
            StudentProfileData(
              label: 'Middle name',
              value: state.selectedStudent!.middleName!,
            ),
            StudentProfileData(
              label: 'Last name',
              value: state.selectedStudent!.lastName,
            ),
            StudentProfileData(
              label: 'Course',
              value: state.selectedStudent!.course,
            ),
            StudentProfileData(
              label: 'Year Level',
              value: '${state.selectedStudent!.year}',
            ),
            const Gap(50),
            const Divider(
              thickness: 2.0,
              color: primaryColor,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'SUBJECT LIST',
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const Divider(
              thickness: 2.0,
              color: primaryColor,
            ),
            const Gap(15),
            const SubjectCardList(),
            const Gap(100),
          ],
        );
      },
    );
  }
}
