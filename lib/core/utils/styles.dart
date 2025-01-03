import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';

abstract class Styles {
//abstract as i will never create any object from it...
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  static const textStyle26 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.normal,
    fontFamily: kGtSectraFine,
  );
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
    fontFamily: kGtSectraFine,
  );
}
