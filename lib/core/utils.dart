import 'package:flutter/cupertino.dart';

double getHeight(BuildContext context, double percentage) {
  return MediaQuery.of(context).size.height * percentage;
}

double getWidth(BuildContext context, double percentage) {
  return MediaQuery.of(context).size.width * percentage;
}

String ordinal(int number) {
  switch (number % 10) {
    case 1:
      return '${number}st';
    case 2:
      return '${number}nd';
    case 3:
      return '${number}rd';
    default:
      return '${number}th';
  }
}
