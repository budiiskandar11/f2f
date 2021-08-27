import 'package:flutter/material.dart';

class ExtraDressingItem {
  final String label;
  final int calories;
  final double priceadd;
  final bool isadded;

  ExtraDressingItem({
    @required this.label, 
    @required this.calories, 
    @required this.priceadd,
    @required this.isadded
  });
}