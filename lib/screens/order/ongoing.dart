import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/widgets/headers/header.dart';

class OnGoingScr extends StatefulWidget {
  @override
  _OnGoingScrState createState() => _OnGoingScrState();
}

class _OnGoingScrState extends State<OnGoingScr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Header(title: 'Ongoing', titlepadding: 127.2),
          SizedBox(height: ScreenUtil().setHeight(27.5)),
          Container(
            height: ScreenUtil().setHeight(156.62),
            width: double.infinity,
            padding:
                EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(16.0)),
            margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(13.5)),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 8.0,
                      offset: Offset(5, 5))
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: ScreenUtil().setHeight(14.1),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Progress of the order',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(15.0),
                        color: Color(0xFF19688D),
                        fontFamily: 'helvetica'),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(5.5),
                ),
                Divider(
                  color: Color(0xFF707070).withOpacity(0.1),
                  thickness: 3.0,
                  endIndent: ScreenUtil().setWidth(10.0),
                ),
                Image.asset('assets/progress.PNG',height: ScreenUtil().setHeight(90.0),width:ScreenUtil().setWidth(401.0))
              ],
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(326.62),
            width: double.infinity,
            margin: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(13.5),
                vertical: ScreenUtil().setHeight(21.5)),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      'assets/Screen Shot 2021-03-18 at 1.38.29 AM@3x.png',
                    )),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 8.0,
                      offset: Offset(3, 3))
                ]),
            child: Stack(
              children: [
                Positioned(
                  left: ScreenUtil().setWidth(169.5),
                  top: ScreenUtil().setHeight(84.5),
                  child: Image.asset('assets/Path 135@3x.png',
                    height: ScreenUtil().setHeight(95),
                    width: ScreenUtil().setWidth(69.76),
                  )
                ),
                Positioned(
                  left: ScreenUtil().setWidth(223.3),
                  top: ScreenUtil().setHeight(149.8),
                  child: Image.asset('assets/iconfinder_home_465062@3x.png',
                    height: ScreenUtil().setHeight(40.98),
                    width: ScreenUtil().setWidth(40.98),
                  )
                ),
                Positioned(
                  left: ScreenUtil().setWidth(145.5),
                  top: ScreenUtil().setHeight(62.8),
                  child: Image.asset('assets/iconfinder_avatar-370-456322_6415362@3x.png',
                    height: ScreenUtil().setHeight(40.98),
                    width: ScreenUtil().setWidth(40.98),
                  )
                ),
                
              ],
            ),
          ),
          Container(
            height: ScreenUtil().setHeight(129.82),
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(13.5)),
            padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(21.3),
                vertical: ScreenUtil().setHeight(25.8)),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 8.0,
                      offset: Offset(5, 5))
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    item(1, items[0]),
                    item(1, items[1]),
                    item(1, items[2]),
                  ],
                ),
                SizedBox(width: ScreenUtil().setWidth(22.2),),
                VerticalDivider(
                  color: Color(0xFF707070).withOpacity(0.2),
                ),
                SizedBox(width: ScreenUtil().setWidth(22.2),),
                RichText(
                  text: TextSpan(
                    text: 'GoPay  ',
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(15.0),
                        color: Colors.black,
                        fontFamily: 'helvetica'),
                    children: <TextSpan>[
                      TextSpan(
                        text: '\$100',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(15.0),
                            color: Color(0xFF17987D),
                            fontWeight: FontWeight.w900,
                            fontFamily: 'helvetica'),
                      )
                    ],
                  ),
                ),
                SizedBox(width: ScreenUtil().setWidth(22.2),)
              ],
            ),
          ),
        ]),
      ),
    ));
  }

  item(int quantity, String name) {
    return Row(
      children: [
        Icon(
          Icons.remove_rounded,
          color: Color(0xFF19688D),
          size: 20.0,
        ),
        SizedBox(
          width: ScreenUtil().setWidth(10.5),
        ),
        Text(
          '${quantity.toString()}  $name',
          style: TextStyle(
              fontSize: ScreenUtil().setSp(15.0),
              color: Color(0xFF19688D),
              fontFamily: 'helvetica'),
        )
      ],
    );
  }

  List<String> items = [
    'Burger',
    'Coke',
    'Tacos',
  ];
}
