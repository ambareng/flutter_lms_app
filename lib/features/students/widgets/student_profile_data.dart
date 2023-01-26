import 'package:flutter/material.dart';
import 'package:flutter_teacher_dashboard_app/core/styles.dart';
import 'package:flutter_teacher_dashboard_app/core/utils.dart';

class StudentProfileData extends StatelessWidget {
  final String label;
  final String value;

  const StudentProfileData({Key? key, required this.label, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      decoration: const BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Colors.black12, width: 0.5))),
      child: Row(
        children: [
          SizedBox(
            width: getWidth(context, 0.45),
            child: Text(
              label,
              style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Text(
            value,
            style: const TextStyle(
                color: primaryColor, fontSize: 16, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
