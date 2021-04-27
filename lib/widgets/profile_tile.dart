import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tugas5_monitoring/theme.dart';

class ProfileTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;

  const ProfileTile({
    Key key,
    this.icon,
    this.title,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: color,
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        SizedBox(width: 10.h),
        Text(
          title,
          style: titleTextStyle.copyWith(fontWeight: FontWeight.normal),
        ),
        Spacer(),
        Icon(Icons.chevron_right)
      ],
    );
  }
}
