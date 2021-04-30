import 'package:flutter/material.dart';
import 'package:tugas5_monitoring/pages/work_month.dart';
import 'package:tugas5_monitoring/pages/work_today.dart';
import 'package:tugas5_monitoring/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: primaryColor,
              bottom: TabBar(
                indicatorColor: secondaryColor,
                tabs: [
                  Tab(text: 'Hari Ini'),
                  Tab(text: 'Bulan Ini'),
                ],
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu),
                  Text(
                    'Working List',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.notifications)
                ],
              )),
          body: TabBarView(
            children: [
              WorkToday(),
              WorkMonth(),
            ],
          ),
        ),
      ),
    );
  }
}
