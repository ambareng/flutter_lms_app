import 'package:flutter/material.dart';
import 'package:flutter_teacher_dashboard_app/core/utils.dart';

class Spinner extends StatelessWidget {
  final double size;
  final Color color;

  const Spinner({Key? key, required this.size, this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getWidth(context, size),
      height: getWidth(context, size),
      child: CircularProgressIndicator(
        strokeWidth: 1.0,
        color: color,
      ),
    );
  }
}
