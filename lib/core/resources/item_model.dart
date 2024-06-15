import 'package:flutter/material.dart';

class ItemModel {
  final String header;
  final Widget Function() contentBuilder;

  ItemModel({required this.header, required this.contentBuilder});
}
