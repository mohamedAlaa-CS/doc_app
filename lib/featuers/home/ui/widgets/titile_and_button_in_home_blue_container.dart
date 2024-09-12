import 'package:doc_app/core/helper/spacing.dart';
import 'package:doc_app/core/theming/styles.dart';
import 'package:doc_app/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitileAndButtonInHomeBlueContainer extends StatelessWidget {
  const TitileAndButtonInHomeBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        top: 12.h,
        start: 18.w,
        bottom: 15.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Book and \nschedule with \nnearest doctor',
            style: TextStyles.font18DarkBlueWeight700.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          verticalSpace(15.h),
          Expanded(
            child: AppTextButton(
              borderRadius: 48.r,
              verticalPadding: 10.h,
              horizontalPadding: 20.w,
              buttonWidth: 109.w,
              backgroundColor: Colors.white,
              buttonText: 'Find Nearby',
              textStyle: TextStyles.font12Blue80Wheight400,
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
