import 'package:flutter/widgets.dart';

const double defaultMargin = 24.0;

const Color bgColor = Color(0xffFDFDFE);
const Color whiteColor = Color(0xffFFFFFF);

const Color greyColor = Color(0xff929292);
const Color lightGreyColor = Color(0xffE1E1EA);
const Color primaryColor = Color(0xff0D0846);
const Color orangeColor = Color(0xffFFAB2E);

const LinearGradient bgGradient = LinearGradient(
  colors: [bgColor, Color(0xffF3F4F8)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);

TextStyle avenirBlack = const TextStyle(
  fontFamily: 'AvenirBlack',
  fontWeight: FontWeight.w700,
);
TextStyle avenirRoman = const TextStyle(
  fontFamily: 'AvenirRoman',
);
TextStyle avenirBook = const TextStyle(
  fontFamily: 'AvenirBook',
);
TextStyle avenirHeavy = const TextStyle(
  fontFamily: 'AvenirHeavy',
);
