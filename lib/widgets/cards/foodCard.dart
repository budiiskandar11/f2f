import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DishCard extends StatefulWidget {
  @override
  _DishCardState createState() => _DishCardState();
}

class _DishCardState extends State<DishCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(105.0),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(24.5)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0)),
      ),
      child: Column(children: [
        SizedBox(
          height: ScreenUtil().setHeight(5.0),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: ScreenUtil().setWidth(140.5),
              right: ScreenUtil().setWidth(9.5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('Fit Pasta',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'helvetica',
                          fontWeight: FontWeight.w700,
                          fontSize: ScreenUtil().setSp(17.0))),
                  SizedBox(height: ScreenUtil().setHeight(3.1)),
                  Text('Pizza & pasta',
                      style: TextStyle(
                          color: Colors.black38,
                          fontFamily: 'helvetica',
                          fontSize: ScreenUtil().setSp(13.0))),
                ],
              ),
              Container(
                height: ScreenUtil().setHeight(24.0),
                width: ScreenUtil().setWidth(50.0),
                decoration: BoxDecoration(
                    color: Color(0xFF17987D),
                    borderRadius: BorderRadius.circular(30.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageIcon(
                      AssetImage(
                          'assets/iconfinder_UI_UX_UIUX_About_4470663@3x.png'),
                      size: 9.0,
                      color: Colors.white,
                    ),
                    SizedBox(width: ScreenUtil().setWidth(4.0)),
                    Text('Info',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'helvetica',
                            fontSize: ScreenUtil().setSp(10.0))),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: ScreenUtil().setHeight(9.0),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(25.5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xFF6CBD45),
                        size: 12.0,
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(6.6),
                      ),
                      Text('New',
                          style: TextStyle(
                              color: Color(0xFF6CBD45),
                              fontFamily: 'helvetica',
                              fontSize: ScreenUtil().setSp(11.0))),
                    ],
                  ),
                  SizedBox(height: ScreenUtil().setHeight(8.0)),
                  Text('Resto Rating',
                      style: TextStyle(
                          color: Color(0xFF686868),
                          fontFamily: 'helvetica',
                          fontSize: ScreenUtil().setSp(9.0))),
                ],
              ),
              Container(
                height: ScreenUtil().setHeight(33.0),
                child: VerticalDivider(
                  color: Color(0xFF707070).withOpacity(0.2),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xFF6CBD45),
                        size: 12.0,
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(6.6),
                      ),
                      Text('0.35 km',
                          style: TextStyle(
                              color: Color(0xFF6CBD45),
                              fontFamily: 'helvetica',
                              fontSize: ScreenUtil().setSp(11.0))),
                    ],
                  ),
                  SizedBox(height: ScreenUtil().setHeight(8.0)),
                  Text('16 min',
                      style: TextStyle(
                          color: Color(0xFF686868),
                          fontFamily: 'helvetica',
                          fontSize: ScreenUtil().setSp(9.0))),
                ],
              ),
              Container(
                height: ScreenUtil().setHeight(33.0),
                child: VerticalDivider(
                  color: Color(0xFF707070).withOpacity(0.2),
                ),
              ),
              Column(
                children: [
                  Text('\$\$\$',
                      style: TextStyle(
                          color: Color(0xFF6CBD45),
                          fontFamily: 'helvetica',
                          fontSize: ScreenUtil().setSp(11.0))),
                  SizedBox(height: ScreenUtil().setHeight(8.0)),
                  Text('Below 16k',
                      style: TextStyle(
                          color: Color(0xFF686868),
                          fontFamily: 'helvetica',
                          fontSize: ScreenUtil().setSp(9.0))),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
