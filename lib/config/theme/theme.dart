import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme(BuildContext context) => ThemeData(
      fontFamily: 'SF Pro Text',
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: TextTheme(
        bodyText1: GoogleFonts.montserratAlternates(
          color: const Color(0xFF0E0E0D),
          decoration: TextDecoration.none,
          fontStyle: FontStyle.normal,
          fontSize: 13.sp,
        ),
        headline1: GoogleFonts.montserratAlternates(
          color: const Color(0xFF0E0E0D),
          decoration: TextDecoration.none,
          fontStyle: FontStyle.normal,
          fontSize: 28.sp,
        ),
        bodyText2: GoogleFonts.montserratAlternates(
          color: const Color(0xFF0E0E0D),
          decoration: TextDecoration.none,
          fontStyle: FontStyle.normal,
          fontSize: 16.sp,
        ),
        headline4: GoogleFonts.montserratAlternates(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
          fontStyle: FontStyle.normal,
        ),
      ),
      backgroundColor: Colors.white,
      primaryColor: const Color(0xFF373737),
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: const BorderSide(
            color: Color(0xFF373737),
          ),
        ),
        buttonColor: const Color(0xFF373737),
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
        textTheme: ButtonTextTheme.primary,
        disabledColor: Colors.grey,
      ),
      canvasColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.black),
      primaryIconTheme: const IconThemeData(color: Colors.black),
      cardTheme: CardTheme(
        margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(color: const Color(0xFF373737), width: 1.sp),
        ),
        elevation: 0,
      ),
      dialogTheme: DialogTheme.of(context).copyWith(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(color: const Color(0xFF373737), width: 1.sp),
        ),
      ),
      appBarTheme: AppBarTheme.of(context).copyWith(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Color(0xFF373737)),
        actionsIconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        titleTextStyle: GoogleFonts.montserratAlternates(
          color: const Color(0xFF373737),
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
        hintStyle: TextStyle(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal,
          fontSize: 14,
          height: 1.6,
        ),
      ),
      tabBarTheme: Theme.of(context).tabBarTheme.copyWith(
            labelColor: const Color(0xFF373737),
            labelStyle: const TextStyle(
              height: 1.0,
              color: Colors.black87,
              fontFamily: 'SF Pro Text',
            ),
            unselectedLabelColor: Colors.black87,
          ),
    );

ThemeData darkTheme(BuildContext context) => ThemeData(
      fontFamily: 'SF Pro Text',
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: TextTheme(
        bodyText1: GoogleFonts.montserratAlternates(
          color: Colors.white,
          decoration: TextDecoration.none,
          fontStyle: FontStyle.normal,
          fontSize: 13.sp,
        ),
        headline1: GoogleFonts.montserratAlternates(
          color: Colors.white,
          decoration: TextDecoration.none,
          fontStyle: FontStyle.normal,
          fontSize: 28.sp,
        ),
        bodyText2: GoogleFonts.montserratAlternates(
          color: Colors.white,
          decoration: TextDecoration.none,
          fontStyle: FontStyle.normal,
          fontSize: 16.sp,
        ),
        headline4: GoogleFonts.montserratAlternates(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
          fontStyle: FontStyle.normal,
        ),
      ),
      backgroundColor: const Color(0xFF000F24),
      primaryColor: const Color(0xFF373737),
      buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: const BorderSide(
            color: Color(0xFF373737),
          ),
        ),
        buttonColor: const Color(0xFF373737),
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
        textTheme: ButtonTextTheme.primary,
        disabledColor: Colors.grey,
      ),
      canvasColor: Colors.white,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      primaryIconTheme: const IconThemeData(color: Colors.black),
      cardTheme: CardTheme(
        margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(color: const Color(0xFF373737), width: 1.sp),
        ),
        elevation: 0,
      ),
      dialogTheme: DialogTheme.of(context).copyWith(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(color: const Color(0xFF373737), width: 1.sp),
        ),
      ),
      appBarTheme: AppBarTheme.of(context).copyWith(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Color(0xFF373737)),
        actionsIconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        titleTextStyle: GoogleFonts.montserratAlternates(
          color: const Color(0xFF373737),
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        filled: true,
        fillColor: Color(0xFF1F2C41),
        contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
        hintStyle: TextStyle(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal,
          fontSize: 14,
          height: 1.6,
          color: Colors.white,
        ),
        prefixIconColor: Colors.white,
      ),
      tabBarTheme: Theme.of(context).tabBarTheme.copyWith(
            labelColor: const Color(0xFF373737),
            labelStyle: const TextStyle(
              height: 1.0,
              color: Colors.black87,
              fontFamily: 'SF Pro Text',
            ),
            unselectedLabelColor: Colors.black87,
          ),
    );
