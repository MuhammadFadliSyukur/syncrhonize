import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tugas5_monitoring/pages/edit_profile.dart';
import 'package:tugas5_monitoring/theme.dart';
import 'package:tugas5_monitoring/widgets/profile_tile.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(10.h, 10.h, 10.h, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu, color: primaryColor),
                    Text(
                      'Profile',
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
              Image.asset('assets/lead.png', height: 150.h),
              SizedBox(height: 20.h),
              Text("Muhammad Fadli Syukur", style: titleTextStyle),
              SizedBox(height: 5.h),
              Text("20180801305 | Manager"),
              SizedBox(height: 20.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.r),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(5, 5),
                      blurRadius: 10,
                      color: Colors.grey[300].withOpacity(.5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    ProfileTile(
                      icon: Icons.notifications,
                      title: 'Notifikasi',
                      color: Colors.red,
                    ),
                    SizedBox(height: 15.h),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProfile(),
                          ),
                        );
                      },
                      child: ProfileTile(
                        icon: Icons.person_pin,
                        title: 'Edit Profil',
                        color: Colors.blue[300],
                      ),
                    ),
                    SizedBox(height: 15.h),
                    ProfileTile(
                      icon: Icons.date_range,
                      title: 'Absensi',
                      color: Colors.purple[900],
                    ),
                    SizedBox(height: 15.h),
                    ProfileTile(
                      icon: Icons.badge,
                      title: 'Work List',
                      color: Colors.amber[700],
                    ),
                    SizedBox(height: 15.h),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20.h),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.r),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(5, 5),
                        blurRadius: 10,
                        color: Colors.grey[300].withOpacity(.5),
                      ),
                    ]),
                child: Column(
                  children: [
                    ProfileTile(
                      icon: Icons.settings,
                      title: 'Pengaturan',
                      color: Colors.black,
                    ),
                    SizedBox(height: 15.h),
                    ProfileTile(
                      icon: Icons.help,
                      title: 'Bantuan',
                      color: Colors.green[300],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
