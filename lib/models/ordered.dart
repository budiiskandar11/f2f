import 'package:flutter/material.dart';

class Ordered {
  final String name;
  final double price;
  final int quantity;

  Ordered({
    @required this.name,
    @required this.price,
    @required this.quantity
  });
}