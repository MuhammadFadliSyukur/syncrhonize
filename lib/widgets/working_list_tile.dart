import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tugas5_monitoring/theme.dart';

class WorkingListTile extends StatelessWidget {
  final String report;
  final String time;
  final bool isDone;

  const WorkingListTile({
    Key key,
    this.report,
    this.time,
    this.isDone = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.h),
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
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isDone ? primaryColor : Colors.grey,
            ),
            child: Icon(
              Icons.done_rounded,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 10.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                report,
                style: subTitleTextstyle,
              ),
              Text(time, style: TextStyle(color: Colors.grey)),
            ],
          ),
          Spacer(),
          Icon(Icons.chevron_right, color: primaryColor),
        ],
      ),
    );
  }
}
