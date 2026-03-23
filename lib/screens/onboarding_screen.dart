import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Utils/app_colors.dart';
import '../Utils/app_styels.dart';
import '../widgets/custom_elevated_button.dart';
import 'login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.all(20.w),
                child: TextButton(
                  onPressed:
                      () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      ),
                  child: Text(
                    'Skip',
                    style: AppStyles.medium12Primary.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      AppColors.background,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView(
                controller: _controller,
                children: [
                  OnboardingContent(
                    image: 'assets/onBoarding_img.png',
                    title: 'Welcome to AppName',
                    description:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Voluptas consectetur adipisicing.',
                  ),
                  OnboardingContent(
                    image: 'assets/onBoarding_img.png',
                    // Changed to existing asset
                    title: 'Stay Connected',
                    description:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Voluptas consectetur adipisicing.',
                  ),
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 2,
              effect: ExpandingDotsEffect(
                activeDotColor: AppColors.primary,
                dotColor: AppColors.borderColor,
                dotHeight: 8.h,
                dotWidth: 8.w,
                expansionFactor: 4,
              ),
            ),
            SizedBox(height: 40.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: CustomElevatedButton(
                text: 'Get Started',
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingContent extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardingContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: Image.asset(
              image,
              height: 300.h,
              width: double.infinity,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 300.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: const Icon(
                    Icons.broken_image,
                    size: 100,
                    color: Colors.grey,
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 40.h),
          Text(
            title,
            style: AppStyles.semiBold24Primary,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15.h),
          Text(
            description,
            style: AppStyles.regular12Secondary,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
