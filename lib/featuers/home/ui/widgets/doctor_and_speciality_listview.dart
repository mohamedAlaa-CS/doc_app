import 'package:doc_app/core/helper/spacing.dart';
import 'package:doc_app/core/theming/colors.dart';
import 'package:doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorAndSpecialityListView extends StatelessWidget {
  const DoctorAndSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.builder(
          itemCount: 7,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: AppColors.lighterGray,
                    child: SvgPicture.asset(
                      'assets/svgs/docdoc_logo.svg',
                      width: 24.w,
                      height: 24.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  verticalSpace(8.h),
                  Text(
                    'mohamed',
                    style: TextStyles.font12Blue80Wheight400
                        .copyWith(color: AppColors.darkBlue),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
