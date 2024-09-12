import 'package:doc_app/core/theming/colors.dart';
import 'package:doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Mohamed!',
              style: TextStyles.font18DarkBlueWeight700,
            ),
            Text(
              'How Are you Today?',
              style: TextStyles.font11DartBlue80Wheight400
                  .copyWith(color: AppColors.darkBlue80),
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24.w,
          backgroundColor: const Color(0xffF5F5F5),
          child: SvgPicture.asset(
            'assets/svgs/notification.svg',
          ),
        )
      ],
    );
  }
}
