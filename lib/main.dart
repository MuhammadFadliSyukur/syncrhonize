import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas5_monitoring/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Monitoring Karyawan',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey[50],
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        home: HomePage(),
      ),
    );
  }
}
