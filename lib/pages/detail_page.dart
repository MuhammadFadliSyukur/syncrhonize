import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tugas5_monitoring/theme.dart';
import 'package:tugas5_monitoring/widgets/absen_tile.dart';

class DetailPage extends StatelessWidget {
  final String image;
  final String name;
  final String email;
  final String absenMasuk;
  final String absenKeluar;
  final String judulTugas;
  final String klien;
  final String lokasi;
  final String imgLokasi;
  final String deskripsi;

  DetailPage({
    this.absenKeluar,
    this.absenMasuk,
    this.email,
    this.image,
    this.imgLokasi,
    this.judulTugas,
    this.klien,
    this.lokasi,
    this.name,
    this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back, color: primaryColor),
                      ),
                      Text(
                        'Detail Tugas',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.notifications, color: primaryColor)
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Text('Penerima Tugas', style: titleTextStyle),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Image.asset(image, height: 70.h),
                    SizedBox(width: 10.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name),
                        Text(
                          email,
                          style: subTitleTextstyle.copyWith(color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Text('Absen', style: titleTextStyle),
                SizedBox(height: 10.h),
                AbsenTile(
                  absen: 'Absen Masuk',
                  isIn: true,
                  time: absenMasuk,
                  isText: true,
                ),
                SizedBox(height: 5.h),
                AbsenTile(
                  absen: 'Absen Keluar',
                  time: absenKeluar,
                ),
                SizedBox(height: 20.h),
                Container(
                  padding: EdgeInsets.all(15.h),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Status Tugas', style: titleTextStyle),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.h,
                              vertical: 5.h,
                            ),
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text('Selesai', style: whiteTextStyle),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        'Judul Tugas',
                        style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                      ),
                      SizedBox(height: 5.h),
                      Text(judulTugas),
                      SizedBox(height: 20.h),
                      Text(
                        'Klien',
                        style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                      ),
                      SizedBox(height: 5.h),
                      Text(klien),
                      SizedBox(height: 20.h),
                      Text(
                        'Deskripsi',
                        style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                      ),
                      SizedBox(height: 5.h),
                      Text(deskripsi),
                      SizedBox(height: 20.h),
                      Text(
                        'Lokasi',
                        style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                      ),
                      SizedBox(height: 5.h),
                      Text(lokasi),
                      SizedBox(height: 5.h),
                      Image.asset(imgLokasi)
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.h),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      'Selesai',
                      style: whiteTextStyle.copyWith(fontSize: 16.sp),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: 50.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
