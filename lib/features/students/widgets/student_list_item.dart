import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_teacher_dashboard_app/core/styles.dart';
import 'package:flutter_teacher_dashboard_app/core/utils.dart';
import 'package:flutter_teacher_dashboard_app/features/students/bloc/student_bloc.dart';
import 'package:flutter_teacher_dashboard_app/features/students/models/student.dart';
import 'package:gap/gap.dart';

class StudentListItem extends StatelessWidget {
  final Student student;

  const StudentListItem({Key? key, required this.student}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 7.5, horizontal: getWidth(context, 0.05)),
      child: GestureDetector(
        onTap: () {
          BlocProvider.of<StudentBloc>(context)
              .add(StudentViewEvent(student: student));
          Navigator.pushNamed(context, '/student_profile');
        },
        child: Container(
          height: 85,
          width: double.infinity,
          padding: EdgeInsets.symmetric(
              horizontal: getWidth(context, 0.05), vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: primaryColor.withOpacity(0.35)),
          child: Row(
            children: [
              BlocBuilder<StudentBloc, StudentState>(
                builder: (context, state) {
                  return Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 30,
                        minRadius: 30,
                        backgroundImage: AssetImage(student.imageURL),
                      ),
                      const Gap(10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${student.lastName}, ${student.firstName} ${student.middleName}',
                            style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            '${student.course}, ${ordinal(student.year)} Yr.',
                            style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            'Age: ${student.age}',
                            style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      )
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
