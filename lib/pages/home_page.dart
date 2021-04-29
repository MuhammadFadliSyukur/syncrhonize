import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tugas5_monitoring/pages/detail_page.dart';
import 'package:tugas5_monitoring/theme.dart';
import 'package:tugas5_monitoring/widgets/employe_card.dart';
import 'package:tugas5_monitoring/widgets/group_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20.h, 10.h, 20.h, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu, color: primaryColor),
                    Text(
                      'Syncrhonize',
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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GroupTile(
                      image: 'assets/plus.png',
                      title: 'Grup Baru',
                    ),
                    GroupTile(
                      image: 'assets/group1.png',
                      title: 'Jakarta Fair',
                    ),
                    GroupTile(
                      image: 'assets/group2.png',
                      title: 'West Project',
                    ),
                    GroupTile(
                      image: 'assets/group3.png',
                      title: 'Jaya Motor',
                    ),
                    GroupTile(
                      image: 'assets/view.png',
                      title: 'Lihat Semua',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Hai, Fadli', style: titleTextStyle),
                        Text(
                          'Senin, 29 April 2020',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff777777),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.h, vertical: 20.h),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(25.r),
                      ),
                      child: Row(
                        children: [
                          Image.asset('assets/lead.png', height: 70.h),
                          SizedBox(width: 5.h),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Jabatan | Manager', style: whiteTextStyle),
                              Text(
                                'Waktu Senggang Tech',
                                style: whiteTextStyle.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp),
                              ),
                              Text(
                                'Muhammad Fadli Syukur',
                                style: whiteTextStyle.copyWith(fontSize: 16.sp),
                              )
                            ],
                          ),
                          Spacer(),
                          Column(
                            children: [
                              Icon(Icons.people, color: Colors.white),
                              Text('Total 5 tim', style: whiteTextStyle)
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text('Tugas', style: titleTextStyle),
                    SizedBox(height: 10.h),
                    Container(
                      padding: EdgeInsets.all(2.h),
                      width: 150.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.r),
                        color: primaryColor.withOpacity(.10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.chevron_left,
                            size: 20.h,
                            color: Color(0xffaaaaaa),
                          ),
                          Text(
                            '29 April 2021',
                            style: whiteTextStyle.copyWith(
                              color: primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            size: 20.h,
                            color: primaryColor,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              image: 'assets/karyawan1.png',
                              name: 'Richard Santoso',
                              email: 'richardsans@gmail.com',
                              absenMasuk: '07.40.11',
                              absenKeluar: '17.20.10',
                              judulTugas: 'Penawaran Produk Baru',
                              klien: 'PT Jaya Motor',
                              telp: '021 456 7234',
                              deskripsi:
                                  'Menawarkan produk teknologi dan bekerja sama menciptakan teknologi fitur motor terbaru dan inovatif',
                              lokasi:
                                  'Jl. RC Veteran Raya No. 33-35 Bintaro Pesanggrahan Jakarta Selatan DKI Jakarta',
                              imgLokasi: 'assets/maps1.png',
                            ),
                          ),
                        );
                      },
                      child: EmployeCard(
                        image: 'assets/karyawan1.png',
                        name: 'Richard Santoso',
                        taks: 'Penawaran Produk Baru',
                        office: 'PT Jaya Motor',
                        time: '08.00 WIB - selesai',
                      ),
                    ),
                    SizedBox(height: 20.h),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              image: 'assets/karyawan2.png',
                              name: 'Amanda Amelia',
                              email: 'amandaamelia@gmail.com',
                              absenMasuk: '07.28.11',
                              absenKeluar: '17.10.10',
                              judulTugas: 'Survey Tempat',
                              klien: 'Jakarta Fair Tech',
                              telp: '0858 7654 4352',
                              deskripsi:
                                  'Survei tempat untuk demo dan seminar tentang Machine Learning di Jakarta Fair Tech',
                              lokasi:
                                  'Pademangan Tim., Kec. Pademangan, Kota Jakarta Pusat, DKI Jakarta',
                              imgLokasi: 'assets/maps2.png',
                            ),
                          ),
                        );
                      },
                      child: EmployeCard(
                        image: 'assets/karyawan2.png',
                        name: 'Amanda Amelia',
                        taks: 'Survey Tempat',
                        office: 'Jakarta Fair Tech',
                        time: '08.00 WIB - selesai',
                      ),
                    ),
                    SizedBox(height: 20.h),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                              image: 'assets/karyawan3.png',
                              name: 'Belatrix Watshon',
                              email: 'belatrixwatshon@gmail.com',
                              absenMasuk: '07.30.11',
                              absenKeluar: '17.10.10',
                              judulTugas: 'Follow Up Meeting',
                              klien: 'West Project',
                              telp: '021 3455 6743',
                              deskripsi:
                                  'Follow Up Meeting untuk membahasa kalanjutan proyek dari West One City Tech',
                              lokasi:
                                  'Jl. Raya Duri Kosambi, RT.8/RW.6, Duri Kosambi, Kecamatan Cengkareng, Jakarta Barat, DKI Jakarta',
                              imgLokasi: 'assets/maps3.png',
                            ),
                          ),
                        );
                      },
                      child: EmployeCard(
                        image: 'assets/karyawan3.png',
                        name: 'Belatrix Watshon',
                        taks: 'Follow Up Meeting',
                        office: 'West Project',
                        time: '01.00 WIB - selesai',
                      ),
                    ),
                    SizedBox(height: 50.h),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
