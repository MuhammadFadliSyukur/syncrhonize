import 'package:flutter/material.dart';
import 'package:tugas5_monitoring/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AbsenTile extends StatelessWidget {
  final String absen;
  final String time;
  final bool isIn;
  final bool isText;

  const AbsenTile({
    Key key,
    this.absen,
    this.time,
    this.isIn = false,
    this.isText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          absen,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 3.h,
          ),
          decoration: BoxDecoration(
            color: isIn ? primaryColor : secondaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            time,
            style: isText
                ? whiteTextStyle.copyWith(fontSize: 12)
                : TextStyle(color: Colors.black, fontSize: 12),
          ),
        ),
      ],
    );
  }
}
