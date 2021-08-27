import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/widgets/chart/chart.dart';
import '../../widgets/cards/dayCard.dart';
import '../../models/diet.dart';

class MarcosView extends StatefulWidget {
  @override
  _MarcosViewState createState() => _MarcosViewState();
}

class _MarcosViewState extends State<MarcosView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            height: ScreenUtil().setHeight(380.99),
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
                    height: ScreenUtil().setHeight(258.39),
                    width: ScreenUtil().setWidth(253.47),
                    child: Chart(graphvalue: 0)),
                SizedBox(
                  height: ScreenUtil().setHeight(45.0),
                ),
                Container(
                  height: ScreenUtil().setWidth(26.54),
                  width: double.infinity,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      padding: EdgeInsets.only(
                          left: ScreenUtil().setWidth(22.0),
                          right: ScreenUtil().setWidth(15.5)),
                      itemBuilder: (_, index) => graphComponent(
                          dietlist[index].name,
                          dietlist[index].calpercentage,
                          graphcolors[index]),
                      separatorBuilder: (_, index) => SizedBox(
                            width: ScreenUtil().setWidth(45.5),
                          ),
                      itemCount: dietlist.length),
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
      width: ScreenUtil().setWidth(94.47),
      child: Row(
        children: [
          Container(
            height: ScreenUtil().setWidth(15.72),
            width: ScreenUtil().setWidth(15.72),
            decoration: BoxDecoration(shape: BoxShape.circle, color: color),
          ),
          SizedBox(
            width: ScreenUtil().setWidth(10.8),
          ),
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
              Text('${calpercentage.round()}%',
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
    Diet(name: 'Carbohydrate', calpercentage: 0.0),
    Diet(name: 'Fat', calpercentage: 0.0),
    Diet(name: 'Protein', calpercentage: 0.0),
  ];
  List<Color> graphcolors = [
    Color(0xFF77DD45),
    Color(0xFF30A949),
    Color(0xFF19688D),
  ];
}
