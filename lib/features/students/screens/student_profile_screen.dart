import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_teacher_dashboard_app/core/styles.dart';
import 'package:flutter_teacher_dashboard_app/core/utils.dart';
import 'package:flutter_teacher_dashboard_app/features/students/bloc/student_bloc.dart';
import 'package:flutter_teacher_dashboard_app/features/students/widgets/screen_header.dart';
import 'package:flutter_teacher_dashboard_app/features/students/widgets/student_profile_data_list.dart';

class StudentProfileScreen extends StatelessWidget {
  const StudentProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<StudentBloc, StudentState>(
      builder: (context, state) {
        return Column(
          children: [
            Container(
              width: double.infinity,
              height: getHeight(context, 0.45),
              decoration: const BoxDecoration(color: primaryColor),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: getHeight(context, 0.05),
                    horizontal: getWidth(context, 0.05)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const ScreenHeader(),
                    Flexible(
                      flex: 1,
                      child: BlocBuilder<StudentBloc, StudentState>(
                        builder: (context, state) {
                          return CircleAvatar(
                            minRadius: 75,
                            maxRadius: 75,
                            backgroundImage: AssetImage(
                              state.selectedStudent!.imageURL,
                            ),
                          );
                        },
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '${state.selectedStudent!.lastName}, ${state.selectedStudent!.firstName} ${state.selectedStudent!.middleName}',
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '${state.selectedStudent!.course}, ${ordinal(state.selectedStudent!.year)} Yr.',
                          style: TextStyle(
                              color: Colors.grey[200],
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: SingleChildScrollView(
                child: Stack(children: [
                  Container(
                    constraints:
                        BoxConstraints(minHeight: getHeight(context, 0.55)),
                    width: double.infinity,
                    // height: getHeight(context, 1),
                    decoration: const BoxDecoration(color: primaryColor),
                  ),
                  Container(
                    constraints:
                        BoxConstraints(minHeight: getHeight(context, 0.55)),
                    width: double.infinity,
                    // height: getHeight(context, 1),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        )),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: getWidth(context, 0.075),
                          right: getWidth(context, 0.075),
                          top: 35),
                      child: const StudentProfileDataList(),
                    ),
                  ),
                ]),
              ),
            )
          ],
        );
      },
    ));
  }
}
