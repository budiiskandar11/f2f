import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/widgets/caloriesStatusBars/caloriesStats.dart';
import 'package:foodtofit/widgets/headers/headerHome.dart';
import '../../models/extradressing.dart';
import '../../widgets/chart/extraDressing.dart';

class AddToCartHomeScr extends StatefulWidget {
  @override
  _AddToCartHomeScrState createState() => _AddToCartHomeScrState();
}

class _AddToCartHomeScrState extends State<AddToCartHomeScr> {
  int item = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
          child: Column(
            children: [
              HomeHeader(),
              SizedBox(height: ScreenUtil().setHeight(2.5)),
              CaloriesStats(),
              SizedBox(height: ScreenUtil().setHeight(8.9)),
              Divider(
                indent: 29.5,
                endIndent: 29.5,
                color: Color(0xFF707070).withOpacity(0.4),
              ),
              SizedBox(height: ScreenUtil().setHeight(3.5)),
              Text(
                'Customise the dish',
                style: TextStyle(
                    height: 1.0,
                    fontSize: ScreenUtil().setSp(20),
                    color: Color(0xFF3E3E3E).withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'helvetica'),
              ),
              SizedBox(height: ScreenUtil().setHeight(3.5)),
              Divider(
                indent: 47.5,
                endIndent: 47.5,
                color: Color(0xFF707070).withOpacity(0.4),
              ),
              SizedBox(height: ScreenUtil().setHeight(4.5)),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(21.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: TextSpan(
                            text: 'Promo  ',
                            style: TextStyle(
                                fontFamily: 'helvetica',
                                color: Color(0xFF686868).withOpacity(0.7),
                                fontSize: ScreenUtil().setSp(16.0),
                                fontWeight: FontWeight.w500),
                            children: <TextSpan>[
                          TextSpan(
                              text: '#Makansehat A Salad',
                              style: TextStyle(
                                  fontFamily: 'helvetica',
                                  color: Color(0xFF17987D),
                                  fontSize: ScreenUtil().setSp(18.0),
                                  fontWeight: FontWeight.normal)),
                        ])),
                    Text('159.00',
                        style: TextStyle(
                            fontFamily: 'helvetica',
                            color: Color(0xFF6CBD45),
                            fontSize: ScreenUtil().setSp(20.0),
                            fontWeight: FontWeight.w900))
                  ],
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(6.5)),
              Container(
                width: double.infinity,
                height: ScreenUtil().setHeight(338.0),
                color: Colors.white,
                padding: EdgeInsets.only(
                    left: ScreenUtil().setWidth(18),
                    top: ScreenUtil().setHeight(16.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Extra Dressing',
                        style: TextStyle(
                            fontFamily: 'helvetica',
                            color: Color(0xFF242424).withOpacity(0.8),
                            fontSize: ScreenUtil().setSp(15.0),
                            fontWeight: FontWeight.normal)),
                    SizedBox(height: ScreenUtil().setHeight(1.5)),
                    Text('Optional = Select up to 4',
                        style: TextStyle(
                            fontFamily: 'helvetica',
                            color: Color(0xFF686868).withOpacity(0.8),
                            fontSize: ScreenUtil().setSp(11.0),
                            fontWeight: FontWeight.normal)),
                    SizedBox(height: ScreenUtil().setHeight(9.5)),
                    ListView.separated(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemCount: extradressing.length,
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(
                        height: ScreenUtil().setHeight(13.4),
                      ),
                      itemBuilder: (BuildContext context, int index) =>
                          ExtraDressing(
                              label: extradressing[index].label,
                              calories: extradressing[index].calories,
                              priceadd: extradressing[index].priceadd,
                              isadded: extradressing[index].isadded),
                    )
                  ],
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(7.0)),
              Text(
                'Notes',
                style: TextStyle(
                    height: 1.0,
                    fontSize: ScreenUtil().setSp(15),
                    color: Color(0xFF3E3E3E).withOpacity(0.7),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'helvetica'),
              ),
              Divider(
                indent: 47.5,
                endIndent: 47.5,
                color: Color(0xFF707070).withOpacity(0.4),
              ),
              ListTile(
                minVerticalPadding: 0,
                leading: Text(
                  'Item quantity',
                  style: TextStyle(
                      height: 1.0,
                      fontSize: ScreenUtil().setSp(15),
                      color: Color(0xFF3E3E3E).withOpacity(0.7),
                      fontWeight: FontWeight.w300,
                      fontFamily: 'helvetica'),
                ),
                trailing: StatefulBuilder(
                  builder: (_, state) {
                    return Container(
                      width: ScreenUtil().setWidth(86.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(onTap: () => state(() {
                            if(item>0) item--;
                          }),
                                                    child: Container(
                              height: ScreenUtil().setHeight(20.0),
                              width: ScreenUtil().setWidth(20.0),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.green)),
                              child: Center(
                                child: Icon(
                                  Icons.remove,
                                  size: 14.0,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            item.toString(),
                            style: TextStyle(
                                fontFamily: 'helvetica',
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF434544),
                                fontSize: ScreenUtil().setSp(18.0)),
                          ),
                          GestureDetector(
                            onTap: () => state(() {
                              item++;
                            }),
                            child: Container(
                              height: ScreenUtil().setHeight(20.0),
                              width: ScreenUtil().setWidth(20.0),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.green)),
                              child: Center(
                                child: Icon(
                                  Icons.add,
                                  size: 14.0,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(8.5),
              ),
              GestureDetector(
                onTap: () => {},
                child: Container(
                  width: double.infinity,
                  height: ScreenUtil().setHeight(44.95),
                  margin: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(22.0)),
                  padding: EdgeInsets.only(
                      left: ScreenUtil().setWidth(21.0),
                      right: ScreenUtil().setWidth(24.0)),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      gradient: LinearGradient(
                          stops: [0.0, 0.69],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xFF17987D), Color(0xFF19688D)]),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(0.4, 0.9),
                            spreadRadius: 5.0,
                            blurRadius: 5.0)
                      ],
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Center(
                    child: Text('Add to cart  -  159.00',
                        style: TextStyle(
                            fontFamily: 'helvetica',
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(15.0),
                            fontWeight: FontWeight.w600)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  List<ExtraDressingItem> extradressing = [
    ExtraDressingItem(
        label: 'Small (30gr)', calories: 60, priceadd: 12.00, isadded: false),
    ExtraDressingItem(
        label: 'Mediun (60gr)', calories: 70, priceadd: 15.00, isadded: false),
    ExtraDressingItem(
        label: 'White Truffle (30gr)',
        calories: 30,
        priceadd: 15.00,
        isadded: false),
    ExtraDressingItem(
        label: 'White Truffle (60gr)',
        calories: 40,
        priceadd: 17.00,
        isadded: false),
    ExtraDressingItem(
        label: 'Pure Olive Oil (Small)',
        calories: 40,
        priceadd: 17.00,
        isadded: false),
    ExtraDressingItem(
        label: 'Pure Olive Oil (Small)',
        calories: 40,
        priceadd: 17.00,
        isadded: false),
    ExtraDressingItem(
        label: 'Yuzu Sesam (Small)',
        calories: 40,
        priceadd: 17.00,
        isadded: false),
    ExtraDressingItem(
        label: 'Yuzu Sesam (Small)',
        calories: 40,
        priceadd: 17.00,
        isadded: false),
  ];
}
