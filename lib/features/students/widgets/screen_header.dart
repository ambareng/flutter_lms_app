import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ScreenHeader extends StatelessWidget {
  const ScreenHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => Navigator.pop(context)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          Gap(15),
          Text(
            'Student Profile',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
          )
        ],
      ),
    );
  }
}
