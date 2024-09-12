import 'package:doc_app/core/theming/colors.dart';
import 'package:doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DoctorSpecialityAndSeeAll extends StatelessWidget {
  const DoctorSpecialityAndSeeAll({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          title,
          style: TextStyles.font18DarkBlueWeight700
              .copyWith(fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: Text(
            'See All',
            style: TextStyles.font12Blue80Wheight400
                .copyWith(color: AppColors.mainBlue),
          ),
        ),
      ],
    );
  }
}
