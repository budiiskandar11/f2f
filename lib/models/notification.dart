import 'package:flutter/material.dart';

class MyNotification {
  final String image;
  final String title;
  final String time;
  final String description;

  MyNotification({
    @required this.image, 
    @required this.title, 
    @required this.time, 
    @required this.description
  });
}