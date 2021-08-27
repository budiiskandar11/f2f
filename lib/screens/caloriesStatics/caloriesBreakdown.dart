import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/headers/header.dart';
import 'calories.dart';
import 'nutrients.dart';
import 'marcos.dart';
import 'progress.dart';

class CaloriesBreakdownScr extends StatefulWidget {

  @override
  _CaloriesBreakdownScrState createState() => _CaloriesBreakdownScrState();
}

class _CaloriesBreakdownScrState extends State<CaloriesBreakdownScr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
              child: Scaffold(
          body: Column(
            children: [
              Header(title: 'Calories Breakdown',titlepadding: 75.0),
              Container(
                height: ScreenUtil().setHeight(55.0),
                width: double.infinity,
                child: TabBar(
                  indicatorColor: Color(0xFF17987D),
                  labelColor: Color(0xFF17987D),
                  labelPadding: EdgeInsets.zero,
                  labelStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(18.0),
                    fontWeight: FontWeight.bold
                  ),
                  unselectedLabelColor: Color(0xFF686868).withOpacity(0.45),
                  unselectedLabelStyle: TextStyle(
                    fontSize: ScreenUtil().setSp(15.0),
                    fontWeight: FontWeight.normal
                  ),
                  tabs: [
                    Tab(text: 'Calories'),
                    Tab(text: 'Nutrients'),
                    Tab(text: 'Macros'),
                    Tab(text: 'Progress')
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    CaloriesView(),
                    NutrientsView(),
                    MarcosView(),
                    ProgressView()
                  ]
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}