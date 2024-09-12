import 'package:doc_app/core/helper/spacing.dart';
import 'package:doc_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationDoctorListView extends StatelessWidget {
  const RecommendationDoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.white,
            margin: EdgeInsets.only(bottom: 16.h),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.network(
                    width: 110.w,
                    height: 110.h,
                    fit: BoxFit.cover,
                    'https://img.freepik.com/free-photo/purple-osteospermum-daisy-flower_1373-16.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1726099200&semt=ais_hybrid',
                  ),
                ),
                horizontalSpace(16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Dr. Mohamed',
                        style: TextStyles.font16DarkBlueWeight700,
                        overflow: TextOverflow.ellipsis,
                      ),
                      verticalSpace(5),
                      Text(
                        'Degree | 0111111111111',
                        style: TextStyles.font12Gray80Wheight500,
                      ),
                      verticalSpace(5),
                      Text(
                        'Email@email.com',
                        style: TextStyles.font12Gray80Wheight500,
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
