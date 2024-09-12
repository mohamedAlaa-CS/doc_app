import 'package:doc_app/core/helper/spacing.dart';
import 'package:doc_app/featuers/home/ui/widgets/doctor_and_speciality_listview.dart';
import 'package:doc_app/featuers/home/ui/widgets/doctor_speciality_and_see_all.dart';
import 'package:doc_app/featuers/home/ui/widgets/home_blue_container.dart';
import 'package:doc_app/featuers/home/ui/widgets/home_tap_bar.dart';
import 'package:doc_app/featuers/home/ui/widgets/recommendation_doctor_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          child: Column(
            children: [
              const HomeTabBar(),
              verticalSpace(22),
              const HomeBlueContainer(),
              verticalSpace(24),
              const DoctorSpecialityAndSeeAll(title: 'Doctor Speciality'),
              verticalSpace(16),
              const DoctorAndSpecialityListView(),
              verticalSpace(18),
              // const DoctorSpecialityAndSeeAll(title: 'Recommendation Doctor'),
              // verticalSpace(12),
              const RecommendationDoctorListView(),
            ],
          ),
        ),
      ),
    );
  }
}
