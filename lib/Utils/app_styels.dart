import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppStyles {
  static TextStyle medium12Primary = GoogleFonts.rubik(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );
  static TextStyle medium14Primary = GoogleFonts.rubik(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );

  static TextStyle semiBold24Primary = GoogleFonts.rubik(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.title,
  );
  static TextStyle semiBold28Title = GoogleFonts.rubik(
    fontSize: 28.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.title,
  );
  static TextStyle semiBold14Primary = GoogleFonts.rubik(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.title,
  );
  static TextStyle semiBold12Primary = GoogleFonts.rubik(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.title,
  );
  static TextStyle regular12Secondary = GoogleFonts.rubik(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.secondary,
  );
  static TextStyle regular14Secondary = GoogleFonts.rubik(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.secondary,
  );

  static TextStyle semiBold18White = GoogleFonts.rubik(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
}
