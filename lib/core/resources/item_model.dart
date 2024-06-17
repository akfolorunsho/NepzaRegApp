import 'package:flutter/material.dart';

class ItemModel {
  Widget content;
  bool isExpanded;

  ItemModel({required this.content, this.isExpanded = false});
}
