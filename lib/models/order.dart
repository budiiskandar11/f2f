import 'package:flutter/material.dart';

class Order {
  final String image;
  final String name;
  final String date;
  final double price;
  final bool status;

  Order({
    @required this.image, 
    @required this.name, 
    @required this.date, 
    @required this.price, 
    @required this.status
  });
}