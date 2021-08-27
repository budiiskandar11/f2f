import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final String image;
  final int price;
  final int time; //time in min
  final double distance;

  Product({
    @required this.name, 
    @required this.description, 
    @required this.image, 
    @required this.price, 
    @required this.time,
    @required this.distance
  });
}