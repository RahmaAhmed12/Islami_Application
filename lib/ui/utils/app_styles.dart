import 'package:flutter/material.dart';
import 'package:islami_c13_sun/ui/utils/app_colors.dart';

abstract final class AppStyles {
  static const TextStyle primaryBold20 = TextStyle(
      color: AppColors.primary, fontSize: 20, fontWeight: FontWeight.bold);

  static const TextStyle primaryBold16 = TextStyle(
      color: AppColors.primary, fontSize: 16, fontWeight: FontWeight.bold);

  static const TextStyle primaryBold14 = TextStyle(
      color: AppColors.primary, fontSize: 14, fontWeight: FontWeight.bold);

  static const TextStyle primaryBold24 = TextStyle(
      color: AppColors.primary, fontSize: 24, fontWeight: FontWeight.bold);

  static const TextStyle whiteBold16 = TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.white);

  static const TextStyle whiteBold32 = TextStyle(
      fontSize: 32, fontWeight: FontWeight.bold, color: AppColors.white);

  // static const TextStyle whiteBold30 = TextStyle(
  //     fontSize: 30, fontWeight: FontWeight.bold, color: AppColors.white);

  static const TextStyle blackBold22 = TextStyle(
      fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.black);

  static const TextStyle blackBold20 = TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.black);

  static const TextStyle blackBold16 = TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.black);

  static const TextStyle blackBold14 = TextStyle(
      fontSize: 14, fontWeight: FontWeight.bold, color: AppColors.black);
}
