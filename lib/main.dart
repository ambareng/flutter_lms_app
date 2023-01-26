import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_teacher_dashboard_app/core/styles.dart';
import 'package:flutter_teacher_dashboard_app/features/auth/bloc/auth_bloc.dart';
import 'package:flutter_teacher_dashboard_app/features/auth/repositories/auth_repo.dart';
import 'package:flutter_teacher_dashboard_app/features/login/login_screen.dart';
import 'package:flutter_teacher_dashboard_app/features/students/bloc/student_bloc.dart';
import 'package:flutter_teacher_dashboard_app/features/students/repositories/student_repo.dart';
import 'package:flutter_teacher_dashboard_app/features/students/screens/student_list_screen.dart';
import 'package:flutter_teacher_dashboard_app/features/students/screens/student_profile_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthRepo(),
        ),
        RepositoryProvider(
          create: (context) => StudentRepo(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                AuthBloc(authRepo: RepositoryProvider.of<AuthRepo>(context))
                  ..add(AuthGetAccessTokenEvent()),
          ),
          BlocProvider(
            create: (context) => StudentBloc(
                studentRepo: RepositoryProvider.of<StudentRepo>(context))
              ..add(StudentGetAllEvent()),
          ),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: primaryColor,
            ),
            initialRoute: '/login',
            routes: {
              '/login': (context) => const LoginScreen(),
              '/student_list': (context) => const StudentListScreen(),
              '/student_profile': (context) => const StudentProfileScreen(),
            }),
      ),
    );
  }
}
