import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_teacher_dashboard_app/core/styles.dart';
import 'package:flutter_teacher_dashboard_app/core/utils.dart';
import 'package:flutter_teacher_dashboard_app/features/auth/bloc/auth_bloc.dart';
import 'package:gap/gap.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state.status == AuthStatus.unauthenticated) {
          Navigator.pushNamedAndRemoveUntil(
              context, '/login', (route) => false);
        }
      },
      child: Container(
        height: 100,
        width: double.infinity,
        padding: EdgeInsets.symmetric(
            horizontal: getWidth(context, 0.05), vertical: 15),
        decoration: const BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                BlocProvider.of<AuthBloc>(context).add(AuthLogoutEvent());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.logout_rounded,
                    color: Colors.white,
                    size: 17.5,
                  ),
                  Gap(3.5),
                  Text(
                    'Logout',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            const Spacer(),
            const Text(
              'Student List',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            Container(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
