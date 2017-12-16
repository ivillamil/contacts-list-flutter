import 'package:flutter/material.dart';
import 'AppColors.dart';

class AppFontStyles {
  static const TextStyle description = const TextStyle(
    color: AppColors.text,
    fontSize: 14.0,
    fontFamily: 'serif'
  );
  static const TextStyle label = const TextStyle(
    color: AppColors.text,
    fontSize: 14.0
  );
  static const TextStyle subtitle = const TextStyle(
    color: AppColors.textLight,
    fontSize: 14.0
  );
  static const TextStyle largeSubtitle = const TextStyle(
    color: AppColors.textLight,
    fontSize: 16.0
  );
  static const TextStyle title = const TextStyle(
    color: AppColors.text,
    fontSize: 20.0,
    fontWeight: FontWeight.w300,
  );
  static const TextStyle largeTitle = const TextStyle(
    color: AppColors.text,
    fontSize: 24.0,
    fontWeight: FontWeight.w400,
  );
}