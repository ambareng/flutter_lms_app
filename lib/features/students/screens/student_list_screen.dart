import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_teacher_dashboard_app/core/widgets/custom_app_bar.dart';
import 'package:flutter_teacher_dashboard_app/features/students/widgets/search_bar.dart';
import 'package:flutter_teacher_dashboard_app/features/students/widgets/student_list.dart';

class StudentListScreen extends StatelessWidget {
  const StudentListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
          body: Column(
        children: const [CustomAppBar(), SearchBar(), StudentList()],
      )),
    );
  }
}
