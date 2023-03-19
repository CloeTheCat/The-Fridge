import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_fridge/utils/jsonClass.dart';

late final JsonClass jsonClass;

class CustomColors {
  static const textColor = Color(0xFF474747);
  static const buttonColor = Color(0xFF00C896);
  static final firstGradientColor = Colors.grey.shade100;
  static final secondGradientColor = Colors.blueGrey.shade200;
  static final thirdGradientColor = Colors.blueGrey.shade300;
  static const shadowColor = Color(0x88474747);
  static final boardThemeRed = Colors.red.shade300;
  static final boardThemeBlue = Colors.blue.shade300;
  static final boardThemeGreen = Colors.green.shade300;
  static final boardThemeYellow = Colors.amber.shade300;
  static final boardThemePurple = Colors.deepPurple.shade300;
  static final boardThemePink = Colors.pink.shade300;
  static final boardThemeBrown = Colors.brown.shade300;
  static final boardThemeOrange = Colors.deepOrange.shade300;
}

class CustomTextStyles {
  static final appBarTitle = GoogleFonts.fredokaOne(
    textStyle: const TextStyle(
      color: CustomColors.textColor, 
      fontWeight: FontWeight.w400, 
      fontSize: 48, 
    )
  );
  static final drawerTitle = GoogleFonts.fredokaOne(
    textStyle: const TextStyle(
      color: Colors.white, 
      fontWeight: FontWeight.w400, 
      fontSize: 40, 
    )
  );
  static final drawerSectionTitle = GoogleFonts.openSans(
    textStyle: const TextStyle(
      color: CustomColors.textColor, 
      fontWeight: FontWeight.w700, 
      fontSize: 20, 
    )
  );
  static final drawerSectionText = GoogleFonts.openSans(
    textStyle: const TextStyle(
      color: CustomColors.textColor,
      fontWeight: FontWeight.w500,
      fontSize: 16, 
    )
  );
  static final boardTitle = GoogleFonts.permanentMarker(
    textStyle: const TextStyle(
      color: Colors.white,
      fontSize: 24,
    )
  );
  static final noteTitle = GoogleFonts.permanentMarker(
    textStyle: const TextStyle(
      color: CustomColors.textColor,
      fontSize: 16,
    )
  );
  static final noteText = GoogleFonts.openSans(
    textStyle: const TextStyle(
      color: CustomColors.textColor,
      fontSize: 10,
    )
  );
    static final boardInfo = GoogleFonts.openSans(
    textStyle: const TextStyle(
      color: CustomColors.textColor,
      fontSize: 12,
    )
  );
    static final noteInfo = GoogleFonts.openSans(
    textStyle: const TextStyle(
      color: CustomColors.textColor,
      fontSize: 8,
    )
  );
}

class CustomIcons {
  static const appBarMenu = Icon(
    MaterialSymbols.kitchen_filled,
    color: Colors.white,
  );

  static final noteIconPrivate = Container(
    alignment: Alignment.center,
    height: 20,
    width: 20,
    decoration: BoxDecoration(
      color: CustomColors.boardThemeRed,
      shape: BoxShape.circle
    ),
    child: const Icon(
      Icons.lock_rounded,
      color: Colors.white,
      size: 10
    ),
  );

  static final noteIconShared = Container(
    alignment: Alignment.center,
    height: 20,
    width: 20,
    decoration: BoxDecoration(
      color: CustomColors.boardThemeRed,
      shape: BoxShape.circle
    ),
    child: const Icon(
      Icons.group_rounded,
      color: Colors.white,
      size: 10
    ),
  );
}