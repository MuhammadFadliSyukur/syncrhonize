import 'package:flutter/material.dart';
import 'package:tugas5_monitoring/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmployeCard extends StatelessWidget {
  final String image;
  final String name;
  final String taks;
  final String office;
  final String time;

  const EmployeCard({
    Key key,
    this.image,
    this.name,
    this.taks,
    this.office,
    this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(5, 5),
            blurRadius: 10,
            color: Colors.grey[300].withOpacity(.5),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(image, height: 70.h),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Text(
                taks,
                style: TextStyle(fontSize: 14.sp),
              ),
              Text(
                office,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.sp,
                ),
              ),
              Text(
                time,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.chevron_right,
            color: primaryColor,
          )
        ],
      ),
    );
  }
}
