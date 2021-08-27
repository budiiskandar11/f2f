import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/widgets/headers/headerDiary.dart';
import 'package:foodtofit/widgets/cards/diaryCaloriesCard.dart';
import 'package:foodtofit/widgets/cards/foodIntakeCard.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import '../../models/food.dart';
import '../caloriesStatics/caloriesBreakdown.dart';

class DiaryScr extends StatefulWidget {
  @override
  _DiaryScrState createState() => _DiaryScrState();
}

class _DiaryScrState extends State<DiaryScr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeaderDiary(),
              DiaryCaloriesCard(),
              SizedBox(
                height: ScreenUtil().setHeight(19.0),
              ),
              GestureDetector(
                onTap: () => pushNewScreen(context,
                    screen: CaloriesBreakdownScr(), withNavBar: false),
                child: Container(
                  height: ScreenUtil().setHeight(274.02),
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(12.0)),
                  padding: EdgeInsets.all(ScreenUtil().setWidth(6.0)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            offset: Offset(2, 3),
                            blurRadius: 4.0)
                      ]),
                  child: Column(
                    children: [
                      Container(
                        height: ScreenUtil().setHeight(48.0),
                        width: double.infinity,
                        padding: EdgeInsets.only(
                            left: ScreenUtil().setWidth(23.0),
                            right: ScreenUtil().setWidth(18.0)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                topRight: Radius.circular(15.0)),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [0.5, 1],
                                colors: [Color(0xFF6CBD45), Color(0xFF30A949)])),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Breakfast',
                                  style: TextStyle(
                                      fontFamily: 'helvetica',
                                      height: 1,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(18.0))),
                              Text('469',
                                  style: TextStyle(
                                      fontFamily: 'helvetica',
                                      height: 1,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(22.0))),
                            ],
                          ),
                        ),
                      ),
                      ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics: ClampingScrollPhysics(),
                          itemBuilder: (_, index) => FoodIntakeCard(
                              title: breakfast[index].title,
                              subtitle: breakfast[index].subtitle,
                              value: breakfast[index].value),
                          separatorBuilder: (_, index) => SizedBox(
                                height: ScreenUtil().setHeight(12.0),
                              ),
                          itemCount: breakfast.length),
                      SizedBox(
                        height: ScreenUtil().setHeight(30.0),
                      ),
                      Container(
                        height: ScreenUtil().setHeight(48.0),
                        width: double.infinity,
                        margin: EdgeInsets.only(
                            left: ScreenUtil().setWidth(23.0),
                            right: ScreenUtil().setWidth(19.0)),
                        padding: EdgeInsets.only(
                            left: ScreenUtil().setWidth(20.0),
                            right: ScreenUtil().setWidth(10.3)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color(0xFF686868)),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 24.0,
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(10.0),
                              ),
                              Text('Add Food',
                                  style: TextStyle(
                                      fontFamily: 'helvetica',
                                      height: 1,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(18.0))),
                              Spacer(),
                              Icon(
                                Icons.more_horiz,
                                color: Colors.white,
                                size: 24.0,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(19.0),
              ),
              GestureDetector(
                onTap: () => pushNewScreen(context,
                    screen: CaloriesBreakdownScr(), withNavBar: false),
                child: Container(
                  height: ScreenUtil().setHeight(225.02),
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(12.0)),
                  padding: EdgeInsets.all(ScreenUtil().setWidth(6.0)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            offset: Offset(2, 3),
                            blurRadius: 4.0)
                      ]),
                  child: Column(
                    children: [
                      Container(
                        height: ScreenUtil().setHeight(48.0),
                        width: double.infinity,
                        padding: EdgeInsets.only(
                            left: ScreenUtil().setWidth(23.0),
                            right: ScreenUtil().setWidth(18.0)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                topRight: Radius.circular(15.0)),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [0.5, 1],
                                colors: [Color(0xFF6CBD45), Color(0xFF30A949)])),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Lunch',
                                  style: TextStyle(
                                      fontFamily: 'helvetica',
                                      height: 1,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(18.0))),
                              Text('729',
                                  style: TextStyle(
                                      fontFamily: 'helvetica',
                                      height: 1,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(22.0))),
                            ],
                          ),
                        ),
                      ),
                      ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics: ClampingScrollPhysics(),
                          itemBuilder: (_, index) => FoodIntakeCard(
                              title: lunch[index].title,
                              subtitle: lunch[index].subtitle,
                              value: lunch[index].value),
                          separatorBuilder: (_, index) => SizedBox(
                                height: ScreenUtil().setHeight(12.0),
                              ),
                          itemCount: lunch.length),
                      SizedBox(
                        height: ScreenUtil().setHeight(30.0),
                      ),
                      Container(
                        height: ScreenUtil().setHeight(48.0),
                        width: double.infinity,
                        margin: EdgeInsets.only(
                            left: ScreenUtil().setWidth(23.0),
                            right: ScreenUtil().setWidth(19.0)),
                        padding: EdgeInsets.only(
                            left: ScreenUtil().setWidth(20.0),
                            right: ScreenUtil().setWidth(10.3)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color(0xFF686868)),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 24.0,
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(10.0),
                              ),
                              Text('Add Food',
                                  style: TextStyle(
                                      fontFamily: 'helvetica',
                                      height: 1,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(18.0))),
                              Spacer(),
                              Icon(
                                Icons.more_horiz,
                                color: Colors.white,
                                size: 24.0,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<Food> breakfast = [
    Food(
        title: 'Oat Flakes Breakfast Cereal',
        subtitle: 'Uncle Tobys, 60.0 g',
        value: 234),
    Food(title: 'Bread, wheat', subtitle: '2.0 slice', value: 155),
    Food(title: 'Coffee Black', subtitle: 'Black Coffee, 0.5 cup', value: 80)
  ];
  List<Food> lunch = [
    Food(title: 'Shrim', subtitle: 'Shrimps, 100.0g', value: 106),
    Food(title: 'Large Fries', subtitle: '250 g', value: 375),
  ];
}
