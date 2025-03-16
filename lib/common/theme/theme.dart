import 'package:our_love/common/theme/app_colors.dart';
import 'package:our_love/common/theme/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    primaryColor: ColorStyles.orange9,
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: const ColorScheme.light(
      primary: ColorStyles.orange9,
      secondary: ColorStyles.orange2,
      error: ColorStyles.red4,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: ColorStyles.blue7,
      selectionColor: ColorStyles.blue2,
      selectionHandleColor: ColorStyles.blue7,
    ),
    canvasColor: Colors.transparent,
    focusColor: Colors.transparent,
    primaryIconTheme: const IconThemeData(color: ColorStyles.orange9, size: 20),
    iconTheme: const IconThemeData(color: ColorStyles.orange9, size: 20),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      iconTheme: const IconThemeData(color: ColorStyles.orange9, size: 20),
      backgroundColor: Colors.transparent,
      centerTitle: false,
      elevation: 0,
      actionsIconTheme:
          const IconThemeData(color: ColorStyles.orange9, size: 20),
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      titleTextStyle:
          TextStyles.mobileSubtitle1.copyWith(color: ColorStyles.orange9),
    ),
    textTheme: GoogleFonts.balooBhaijaan2TextTheme(
      Theme.of(context).textTheme.apply(
            bodyColor: ColorStyles.orange9,
            displayColor: ColorStyles.orange9,
            decorationColor: ColorStyles.orange9,
          ),
    ),
  );
}
