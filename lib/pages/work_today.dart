import 'package:flutter/material.dart';
import 'package:tugas5_monitoring/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tugas5_monitoring/widgets/working_list_tile.dart';

class WorkToday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.h),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hari ini, 29 April 2021',
                style: whiteTextStyle.copyWith(color: Colors.grey[600]),
              ),
              SizedBox(height: 20.h),
              WorkingListTile(
                report: "Membuat laporan kinerja tim",
                time: '09.00 WIB',
                isDone: true,
              ),
              SizedBox(height: 10.h),
              WorkingListTile(
                report: 'Meeting : Evaluasi kinerja tim',
                time: '10.00 WIB',
                isDone: true,
              ),
              SizedBox(height: 10.h),
              WorkingListTile(
                report: 'Meeting : Target awal bulan',
                time: '14.00 WIB',
                isDone: false,
              ),
              SizedBox(height: 20.h),
              Text(
                'Besok, 30 April 2021',
                style: whiteTextStyle.copyWith(color: Colors.grey[600]),
              ),
              SizedBox(height: 20.h),
              WorkingListTile(
                report: "Membuat Jadwal Karyawan",
                time: '09.00 WIB',
                isDone: false,
              ),
              SizedBox(height: 10.h),
              WorkingListTile(
                report: 'Check Up laporan anggaran',
                time: '10.00 WIB',
                isDone: false,
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
