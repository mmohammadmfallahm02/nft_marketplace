import 'package:flutter/material.dart';

class NftModel {
  final String imageUrl;
  final Color backgroundColor;
  final num price;
  final String name;

  NftModel(
      {required this.imageUrl,
      this.backgroundColor = Colors.blue,
      this.price = 0,
      this.name = 'unknown'});
}
