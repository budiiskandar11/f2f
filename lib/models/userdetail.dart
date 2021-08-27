import 'package:flutter/material.dart';

class UserDetails {
  final String username;
  final int height;
  final String gender;
  final String dateofbirth;
  final String location;
  final int zipcode;
  final String timezone;
  final String email;
  final String units;
  final String startweight;
  final int currentweight;

  UserDetails({
    @required this.username, 
    @required this.height,
    @required this.gender, 
    @required this.dateofbirth, 
    @required this.location, 
    @required this.zipcode, 
    @required this.timezone, 
    @required this.email, 
    @required this.units, 
    @required this.startweight, 
    @required this.currentweight
  });
}