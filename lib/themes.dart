import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor1 = Color(0xFF212C5F);
Color primaryColor2 = Color(0xFFFFC523);
Color primaryColor3 = Color(0xFF7281A1);
Color primaryColor4 = Color(0xFFFC4C4C4);
Color primaryColor5 = Color(0xFFD1E4F9);

Color kBg = Color(0xFFF1F6F9);
Color kWhite = Color(0xFFFFFFFF);
Color kGrey = Color(0xFFABABAB);
Color kItemProfile = Color(0xFFF1F6F9);

Color btnRed = Color(0xFFF63B3B);
Color btnPrimary = Color(0xFFD1E4F9);

//Belum kepakai
Color appBrandBlue = const Color(0xff212c5f);
Color appBrandYellow = const Color(0xffffc91b);
Color appBrandYellow2 = const Color(0xffffe804);

Color appPrimary = const Color(0xff1d428a);
Color appSecondary = const Color(0xffd1e4f9);
Color appActionFont = const Color(0xffffffff);
Color appActionFont2 = const Color(0xffd1e4f9);
Color appGrey1 = const Color(0xffd9d9d9);
Color appGrey2 = const Color(0xfff5f5f5);
Color appGrey3 = const Color(0xff3f3f3f);

Color appSuccess = const Color(0xffe6f8d0);
Color appInfo = const Color(0xffc9e8fa);
Color appWarning = const Color(0xfffbefc9);
Color appDanger = const Color(0xfff9ded0);

Color appBlack = Colors.black;
Color appGreen = const Color(0xff9ad971);
Color appBlue = const Color(0xff5ea6e4);
Color appYellow = const Color(0xffebbe5f);
Color appRed = const Color(0xffdf836f);

// SEMIBOLD TEXT
TextStyle semiBoldText24 =
    GoogleFonts.poppins(fontSize: 24.sp, fontWeight: semiBold);
TextStyle semiBoldText20 =
    GoogleFonts.poppins(fontSize: 20.sp, fontWeight: semiBold);
TextStyle semiBoldText16 =
    GoogleFonts.poppins(fontSize: 16.sp, fontWeight: semiBold);
TextStyle semiBoldText14 =
    GoogleFonts.poppins(fontSize: 14.sp, fontWeight: semiBold);
TextStyle semiBoldText12 =
    GoogleFonts.poppins(fontSize: 12.sp, fontWeight: semiBold);

// MEDIUM TEXT
TextStyle mediumText11 =
    GoogleFonts.poppins(fontSize: 11.sp, fontWeight: medium);
TextStyle mediumText12 =
    GoogleFonts.poppins(fontSize: 12.sp, fontWeight: medium);
TextStyle mediumText14 =
    GoogleFonts.poppins(fontSize: 14.sp, fontWeight: medium);
TextStyle mediumText10 =
    GoogleFonts.poppins(fontSize: 10.sp, fontWeight: medium);
TextStyle mediumText9 = GoogleFonts.poppins(fontSize: 9.sp, fontWeight: medium);
TextStyle mediumText24 =
    GoogleFonts.poppins(fontSize: 24.sp, fontWeight: medium);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

//ukuran
const double kBorderRadius = 16.0;

class Insets {
  static double offsetScale = 1;
  static double get xs => 4.w;
  static double get sm => 8.w;
  static double get med => 12.w;
  static double get lg => 16.w;
  static double get xl => 20.w;
  static double get xxl => 32.w;
  // Offset, used for the edge of the window, or to separate large sections in the app
  static double get offset => 40 * offsetScale;
}

//widget
Widget verticalSpace(double v) {
  return SizedBox(height: v);
}

Widget horizontalSpace(double v) {
  return SizedBox(width: v);
}

//funsi
class Shadows {
  static List<BoxShadow> get universal => [
        BoxShadow(
          color: const Color(0xff333333).withOpacity(.13),
          blurRadius: 5,
          offset: const Offset(0, 5),
        ),
      ];
}

class Corners {
  static double xs = 4.w;
  static BorderRadius xsBorder = BorderRadius.all(xsRadius);
  static Radius xsRadius = Radius.circular(xs);

  static double sm = 8.w;
  static BorderRadius smBorder = BorderRadius.all(smRadius);
  static Radius smRadius = Radius.circular(sm);

  static double med = 12.w;
  static BorderRadius medBorder = BorderRadius.all(medRadius);
  static Radius medRadius = Radius.circular(med);

  static double lg = 16.w;
  static BorderRadius lgBorder = BorderRadius.all(lgRadius);
  static Radius lgRadius = Radius.circular(lg);

  static double xl = 24.w;
  static BorderRadius xlBorder = BorderRadius.all(xlRadius);
  static Radius xlRadius = Radius.circular(xl);

  static double xxl = 32.w;
  static BorderRadius xxlBorder = BorderRadius.all(xxlRadius);
  static Radius xxlRadius = Radius.circular(xxl);
}
