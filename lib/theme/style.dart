import 'package:flutter/material.dart';
import 'package:nft_marketplace/gen/fonts.gen.dart';

class MyTextStyle {
  MyTextStyle._();

  static const TextStyle exploreTitle = TextStyle(
      height: 1.1,
      fontSize: 38,
      color: Color(0xff262A2F),
      fontFamily: FontFamily.atyp);
  static const TextStyle exploreDescription = TextStyle(
      fontWeight: FontWeight.normal, fontSize: 17, color: Color(0x59000000));
  static const TextStyle homeMadeBy = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.normal,
    fontSize: 16,
  );
  static const TextStyle homeTitle = TextStyle(
      fontFamily: FontFamily.atyp,
      fontSize: 44,
      color: Colors.white,
      height: 1);
  static const TextStyle homeHeaderItem =
      TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold);
  static const TextStyle homeHeaderItemDescription =
      TextStyle(fontSize: 11, color: Colors.white);
}
