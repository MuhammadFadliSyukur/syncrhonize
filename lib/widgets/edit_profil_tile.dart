import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tugas5_monitoring/theme.dart';

class EditProfilTile extends StatelessWidget {
  final String title;
  final String nameTitle;

  const EditProfilTile({
    Key key,
    this.title,
    this.nameTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: subTitleTextstyle.copyWith(
            color: Colors.grey[400],
          ),
        ),
        Text(
          nameTitle,
          style: subTitleTextstyle,
        )
      ],
    );
  }
}
