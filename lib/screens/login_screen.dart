import 'package:cool_login_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/app_colors.dart';
import '../Utils/app_styels.dart';
import '../widgets/custom_text_field.dart';
import 'sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.h),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.borderColor),
                    color: AppColors.borderColor,
                  ),
                  child: Icon(Icons.arrow_back_ios_new, size: 8.sp),
                ),
              ),
              SizedBox(height: 24.h),
              Text('Hey,', style: AppStyles.semiBold28Title),
              Text('Welcome Back', style: AppStyles.semiBold28Title),
              SizedBox(height: 56.h),
              const CustomTextField(
                hintText: 'Enter your email',
                prefixIcon: Icons.email_outlined,
              ),
              SizedBox(height: 16.h),
              CustomTextField(
                hintText: 'Enter your password',
                prefixIcon: Icons.lock_outline,
                isPassword: true,
                suffixIcon: IconButton(onPressed: () {},
                    icon: Image.asset("assets/icons/view-off.png",
                      width: 20.w, height: 20.h,)),
              ),
              SizedBox(height: 16.h),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: AppStyles.semiBold14Primary.copyWith(
                        color: AppColors.primary),
                  ),
                ),
              ),
              SizedBox(height: 200.h),
              CustomElevatedButton(text: 'Login', onPressed: () {}),
              SizedBox(height: 20.h),
              Center(
                child: Text(
                  'Or Continue with',
                  style: AppStyles.semiBold12Primary.copyWith(
                      color: Color(0xFF9CA3AF)),
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialButton(
                    imagePath: "assets/icons/facebook.png",
                    size: 14.62,
                  ),
                  SizedBox(width: 20.w),
                  SocialButton(
                    imagePath: "assets/icons/google.png",
                    size: 14.62,
                  ),
                  SizedBox(width: 20.w),
                  SocialButton(imagePath: "assets/icons/ios.png", size: 14.62),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account? ",
                    style: AppStyles.regular14Secondary.copyWith(
                        color: Color(0xFF6B7280)),
                  ),
                  GestureDetector(
                    onTap:
                        () =>
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignupScreen(),
                          ),
                        ),
                    child: Text(
                      'Sign-Up',
                      style: AppStyles.medium14Primary.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class SocialButton extends StatelessWidget {
  final String imagePath;
  final double size;

  const SocialButton({super.key, required this.imagePath, this.size = 24});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Image.asset(
        imagePath,
        width: size.w,
        height: size.h,
        fit: BoxFit.contain,
      ),
    );
  }
}