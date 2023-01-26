import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_teacher_dashboard_app/core/styles.dart';
import 'package:flutter_teacher_dashboard_app/core/utils.dart';
import 'package:flutter_teacher_dashboard_app/core/widgets/spinner.dart';
import 'package:flutter_teacher_dashboard_app/features/auth/bloc/auth_bloc.dart';
import 'package:flutter_teacher_dashboard_app/features/login/widgets/custom_text_field.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';

class LoginForm extends HookWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state.status == AuthStatus.authenticationError) {
              Fluttertoast.showToast(
                  msg: "Incorrect login credentials. Please try again.",
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.TOP,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red[300],
                  textColor: Colors.white,
                  fontSize: 14.0);
            }
            if (state.status == AuthStatus.authenticated) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/student_list', (route) => false);
            }
          },
          child: BlocBuilder<AuthBloc, AuthState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextField(
                    label: 'Username',
                    controller: usernameController,
                    isEnabled: state.status != AuthStatus.authenticating,
                  ),
                  Gap(getHeight(context, 0.025)),
                  CustomTextField(
                    label: 'Password',
                    isHidden: true,
                    controller: passwordController,
                    isEnabled: state.status != AuthStatus.authenticating,
                  ),
                ],
              );
            },
          ),
        ),
        Flexible(
          child: SizedBox(
            height: 55,
            width: double.infinity,
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return ElevatedButton(
                  onPressed: state.status == AuthStatus.authenticating
                      ? null
                      : () => BlocProvider.of<AuthBloc>(context).add(
                          AuthLoginEvent(
                              username: usernameController.text,
                              password: passwordController.text)),
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Colors.black,
                      disabledBackgroundColor: disabledColor),
                  child: state.status == AuthStatus.authenticating
                      ? const Spinner(size: 0.05)
                      : Text(
                          'Log in',
                          style:
                              textFieldLabelStyle.copyWith(color: Colors.white),
                        ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
