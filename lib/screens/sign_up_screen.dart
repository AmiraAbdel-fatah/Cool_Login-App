import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/app_colors.dart';
import '../Utils/app_styels.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_text_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.borderColor),
                    color: AppColors.borderColor,
                  ),
                  child: Icon(Icons.arrow_back_ios_new, size: 15.sp),
                ),
              ),
              SizedBox(height: 24.h),
              Text("Let's, Create", style: AppStyles.semiBold28Title),
              Text('Account', style: AppStyles.semiBold28Title),
              SizedBox(height: 56.h),
              const CustomTextField(
                hintText: 'Enter your email',
                prefixIcon: Icons.email_outlined,
              ),
              SizedBox(height: 16.h),
              const CustomTextField(
                hintText: 'Enter your number',
                prefixIcon: Icons.phone_android_outlined,
              ),
              SizedBox(height: 16.h),
              CustomTextField(
                hintText: 'Enter your password',
                prefixIcon: Icons.lock_outline,
                isPassword: true,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/icons/view-off.png",
                    width: 20.w,
                    height: 20.h,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              CustomTextField(
                hintText: 'Confirm your password',
                prefixIcon: Icons.lock_outline,
                isPassword: true,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/icons/view-off.png",
                    width: 20.w,
                    height: 20.h,
                  ),
                ),
              ),
              SizedBox(height: 200.h),
              CustomElevatedButton(text: 'Create Account', onPressed: () {}),
              SizedBox(height: 20.h),
              Center(
                child: Text(
                  'Or Continue with',
                  style: AppStyles.semiBold12Primary.copyWith(
                    color: const Color(0xFF9CA3AF),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an Account? ",
                    style: AppStyles.regular14Secondary.copyWith(
                      color: Color(0xFF6B7280),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Text(
                      'Sign-In',
                      style: AppStyles.medium14Primary.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
