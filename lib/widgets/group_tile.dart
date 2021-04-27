import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GroupTile extends StatelessWidget {
  final String image;
  final String title;

  const GroupTile({
    Key key,
    this.image,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75.w,
      child: Column(
        children: [
          Image.asset(image, height: 60.h),
          SizedBox(height: 5.h),
          Text(
            title,
            style: TextStyle(fontSize: 12.sp),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
