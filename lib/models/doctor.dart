import 'package:flutter/material.dart';

class Doctor {
  final String image;
  final String name;
  final String type;
  final String status;
  final int reviews;
  final int rp;
  final double rating;

  Doctor({
    @required this.image, 
    @required this.name, 
    @required this.type, 
    @required this.status, 
    @required this.reviews, 
    @required this.rp, 
    @required this.rating
  });
}