import 'package:flutter/material.dart';
import 'package:tugas5_monitoring/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tugas5_monitoring/widgets/working_list_tile.dart';

class WorkMonth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: primaryColor,
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Maret 2021',
                    style: whiteTextStyle.copyWith(color: Colors.grey[600]),
                  ),
                  Text(
                    'Lihat semua',
                    style: whiteTextStyle.copyWith(color: primaryColor),
                  )
                ],
              ),
              SizedBox(height: 20.h),
              WorkingListTile(
                report: "Implementasi Teknologi Motor",
                time: '10 Maret 2021',
                isDone: true,
              ),
              SizedBox(height: 10.h),
              WorkingListTile(
                report: 'Evaluasi Pertengahan Bulan',
                time: '16 Maret 2021',
                isDone: true,
              ),
              SizedBox(height: 10.h),
              WorkingListTile(
                report: 'Meeting Klien: PT Jaya Motor',
                time: '21 Maret 2021',
                isDone: true,
              ),
              SizedBox(height: 40.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'April 2021',
                    style: whiteTextStyle.copyWith(color: Colors.grey[600]),
                  ),
                  Text(
                    'Lihat semua',
                    style: whiteTextStyle.copyWith(color: primaryColor),
                  )
                ],
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
