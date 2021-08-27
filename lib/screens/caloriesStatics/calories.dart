import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../widgets/cards/dayCard.dart';
import '../../widgets/chart/chart.dart';
import '../../models/diet.dart';

class CaloriesView extends StatefulWidget {
  @override
  _CaloriesViewState createState() => _CaloriesViewState();
}

class _CaloriesViewState extends State<CaloriesView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: ScreenUtil().setHeight(23.5),
          ),
          DayCard(),
          SizedBox(
            height: ScreenUtil().setHeight(26.3),
          ),
          Container(
            height: ScreenUtil().setHeight(463.99),
            width: double.infinity,
            margin:
                EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(12.0)),
            padding:
                EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(2.0)),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
            child: Column(
              children: [
                SizedBox(
                  height: ScreenUtil().setHeight(26.4),
                ),
                Container(
                    height: ScreenUtil().setHeight(215.23),
                    width: ScreenUtil().setWidth(211.51),
                    child: Chart(graphvalue: 1)),
                SizedBox(
                  height: ScreenUtil().setHeight(30.0),
                ),
                Container(
                  height: ScreenUtil().setWidth(26.54),
                  width: double.infinity,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      padding: EdgeInsets.only(
                          left: ScreenUtil().setWidth(11.0),
                          right: ScreenUtil().setWidth(15.5)),
                      itemBuilder: (_, index) => graphComponent(
                          dietlist[index].name,
                          dietlist[index].calpercentage,
                          graphcolors[index]),
                      separatorBuilder: (_, index) => SizedBox(
                            width: ScreenUtil().setWidth(20.5),
                          ),
                      itemCount: dietlist.length),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(14.0),
                ),
                Divider(
                  color: Color(0xFF707070).withOpacity(0.23),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(17.5),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: ScreenUtil().setWidth(27.0),
                      right: ScreenUtil().setWidth(25.7)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Calories',
                        style: TextStyle(
                            fontSize: ScreenUtil().setHeight(16.0),
                            fontFamily: 'helvetica',
                            letterSpacing: -0.5,
                            color: Color(0xFF050505)),
                      ),
                      Text(
                        '0',
                        style: TextStyle(
                            fontSize: ScreenUtil().setHeight(15.0),
                            fontFamily: 'helvetica',
                            letterSpacing: -0.5,
                            color: Color(0xFF050505)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(24.0),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: ScreenUtil().setWidth(27.0),
                      right: ScreenUtil().setWidth(25.7)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Net Calories',
                        style: TextStyle(
                            fontSize: ScreenUtil().setHeight(16.0),
                            fontFamily: 'helvetica',
                            letterSpacing: -0.5,
                            color: Color(0xFF050505)),
                      ),
                      Text(
                        '-2',
                        style: TextStyle(
                            fontSize: ScreenUtil().setHeight(15.0),
                            fontFamily: 'helvetica',
                            letterSpacing: -0.5,
                            color: Color(0xFF050505)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(24.0),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: ScreenUtil().setWidth(27.0),
                      right: ScreenUtil().setWidth(25.7)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Goal',
                        style: TextStyle(
                            fontSize: ScreenUtil().setHeight(16.0),
                            fontFamily: 'helvetica',
                            letterSpacing: -0.5,
                            color: Color(0xFF050505)),
                      ),
                      Text(
                        '2,030',
                        style: TextStyle(
                            fontSize: ScreenUtil().setHeight(15.0),
                            fontFamily: 'helvetica',
                            letterSpacing: -0.5,
                            color: Color(0xFF050505)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  graphComponent(String name, double calpercentage, Color color) {
    return Container(
      height: ScreenUtil().setWidth(26.54),
      width: ScreenUtil().setWidth(71.47),
      child: Row(
        children: [
          Container(
            height: ScreenUtil().setWidth(15.72),
            width: ScreenUtil().setWidth(15.72),
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style: TextStyle(
                      fontFamily: 'helvetica',
                      height: 1,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF121212),
                      fontSize: ScreenUtil().setSp(10.0))),
              SizedBox(
                height: ScreenUtil().setHeight(5.5),
              ),
              Text('${calpercentage.round()}% (${calpercentage.round()}Cal)',
                  style: TextStyle(
                      fontFamily: 'helvetica',
                      height: 1,
                      color: Color(0xFF686868).withOpacity(0.68),
                      fontSize: ScreenUtil().setSp(9.0))),
            ],
          ),
        ],
      ),
    );
  }

  List<Diet> dietlist = [
    Diet(name: 'Breakfast', calpercentage: 0.0),
    Diet(name: 'Lunch', calpercentage: 0.0),
    Diet(name: 'Dinner', calpercentage: 0.0),
    Diet(name: 'Snacks', calpercentage: 0.0)
  ];
  List<Color> graphcolors = [
    Color(0xFF77DD45),
    Color(0xFF30A949),
    Color(0xFF057961),
    Color(0xFF19688D),
  ];
}
