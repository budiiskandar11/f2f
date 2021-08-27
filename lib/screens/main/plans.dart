import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/models/doctor.dart';
import 'package:foodtofit/widgets/cards/plansCard.dart';
import '../../widgets/headers/headerHome.dart';

class PlansScr extends StatefulWidget {
  @override
  _PlansScrState createState() => _PlansScrState();
}

class _PlansScrState extends State<PlansScr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              HomeHeader(),
              ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: doctors.length,
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  height: ScreenUtil().setHeight(15.0),
                ),
                itemBuilder: (BuildContext context, int index) => PlansCard(
                    image: doctors[index].image,
                    name: doctors[index].name,
                    type: doctors[index].type,
                    status: doctors[index].status,
                    rating: doctors[index].rating,
                    reviews: doctors[index].reviews,
                    rp: doctors[index].rp),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Doctor> doctors = [
    Doctor(
        image: 'assets/343b1e920642781f81911a979bcf1a34@3x.png',
        name: 'Dr. Suhartini',
        type: 'Cardiologist',
        status: 'Online',
        rating: 4.8,
        reviews: 141,
        rp: 800),
    Doctor(
        image: 'assets/5bb5605309dba.image@3x.png',
        name: 'Dr. Suhartini',
        type: 'Cardiologist',
        status: 'Busy',
        rating: 4.8,
        reviews: 141,
        rp: 800),
    Doctor(
        image: 'assets/FDFpOHge@3x.png',
        name: 'Dr. Suhartini',
        type: 'Cardiologist',
        status: 'Online',
        rating: 4.8,
        reviews: 141,
        rp: 800),
    Doctor(
        image: 'assets/J1Uhc5xc@3x.png',
        name: 'Dr. Suhartini',
        type: 'Cardiologist',
        status: 'Offline',
        rating: 4.8,
        reviews: 141,
        rp: 800),
    Doctor(
        image: 'assets/m2@3x.png',
        name: 'Dr. Suhartini',
        type: 'Cardiologist',
        status: 'Online',
        rating: 4.8,
        reviews: 141,
        rp: 800)
  ];
}
