import 'package:doc_app/featuers/home/ui/widgets/titile_and_button_in_home_blue_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBlueContainer extends StatelessWidget {
  const HomeBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        image: const DecorationImage(
          image: AssetImage(
            'assets/images/home_background_container.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const TitileAndButtonInHomeBlueContainer(),
          Positioned(
            right: 15.w,
            bottom: 0.h,
            child: Image.asset(
              'assets/images/home_doc_test.png',
              height: 200.h,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
