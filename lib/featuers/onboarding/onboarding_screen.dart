import 'package:doc_app/core/theming/styles.dart';
import 'package:doc_app/featuers/onboarding/widgets/doc_logo_and_name.dart';
import 'package:doc_app/featuers/onboarding/widgets/doctore_text_and_image.dart';
import 'package:doc_app/featuers/onboarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 28.h, bottom: 28.h),
        child: SingleChildScrollView(
            child: Column(
          children: [
            const DocLogoAndName(),
            SizedBox(height: 30.h),
            const DoctorTextAndImage(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                children: [
                  Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    style: TextStyles.font13GrayRegular,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.h),
                  const GetStartedButton(),
                ],
              ),
            )
          ],
        )),
      )),
    );
  }
}
