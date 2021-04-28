import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tugas5_monitoring/theme.dart';
import 'package:tugas5_monitoring/widgets/edit_profil_tile.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
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
                        child: Icon(Icons.chevron_left, color: primaryColor)),
                    Text(
                      'Edit Profil',
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.home, color: Colors.grey[50])
                  ],
                ),
              ),
              SizedBox(height: 50.h),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 110.h),
                    child: Container(
                      padding: EdgeInsets.all(20.h),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.r),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(10, 10),
                              blurRadius: 10,
                              color: Colors.grey[200])
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 150.h),
                          EditProfilTile(
                            title: 'Nama',
                            nameTitle: 'Muhammad Fadli Syukur',
                          ),
                          SizedBox(height: 20.h),
                          EditProfilTile(
                            title: 'Jabatan',
                            nameTitle: 'Manager',
                          ),
                          SizedBox(height: 20.h),
                          EditProfilTile(
                            title: 'Tanggal Lahir',
                            nameTitle: '16 Juni 2000',
                          ),
                          SizedBox(height: 20.h),
                          EditProfilTile(
                            title: 'Jenis Kelamin',
                            nameTitle: 'Laki-Laki',
                          ),
                          SizedBox(height: 20.h),
                          EditProfilTile(
                            title: 'Telepon',
                            nameTitle: '+6208592721565',
                          ),
                          SizedBox(height: 20.h),
                          EditProfilTile(
                            title: 'Email',
                            nameTitle: 'mfadlisy16@gmail.com',
                          ),
                          SizedBox(height: 20.h),
                          EditProfilTile(
                            title: 'Alamat',
                            nameTitle: 'Kembangan, DKI Jakarta',
                          ),
                          SizedBox(height: 20.h),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 220.h,
                      width: 220.h,
                      child: Stack(
                        children: [
                          Image.asset('assets/lead.png', height: 200.h),
                          Positioned(
                            top: 140,
                            left: 120,
                            child: Container(
                              padding: EdgeInsets.all(10.h),
                              decoration: BoxDecoration(
                                color: primaryColor,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.edit, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                height: 40.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Selesai'),
                    style: ElevatedButton.styleFrom(
                      primary: primaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
