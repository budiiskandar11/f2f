import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/screens/features/editprofile.dart';
import 'package:foodtofit/screens/main/home.dart';
import 'package:foodtofit/screens/features/myaccount.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class MeCard extends StatefulWidget {
  final String name;
  final int age;
  final String designation;
  final String location;
  final String description;
  final String image;

  MeCard(
      {this.name,
      this.age,
      this.designation,
      this.location,
      this.description,
      this.image});

  @override
  _MeCardState createState() => _MeCardState();
}

class _MeCardState extends State<MeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(280.32),
              width: double.infinity,
      child: Stack(
        children: [
          ClipPath(
            clipper: WaveClipper(),
            child: Container(
              height: ScreenUtil().setHeight(270.87),
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Color(0xFF19688D), Color(0xFF17987D)],
                  stops: [0.55, 1.0],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: ScreenUtil().setHeight(20.5),
                  ),
                  Padding(
                    padding:
                  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(18.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            icon: ImageIcon(
                                AssetImage('assets/menu-svgrepo-com@3x.png'),
                                size: 20),
                            color: Colors.white,
                            onPressed: () => pushNewScreen(context, screen: MyAccountScr(),withNavBar: false)),
                        IconButton(
                            icon: ImageIcon(
                                AssetImage('assets/edit-svgrepo-com@3x.png'),
                                color: Colors.white,
                                size: 20),
                            onPressed: () => pushNewScreen(context, screen: EditProfileScr()))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(33.9),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: ScreenUtil().setHeight(67.9),
            child: Container(
              height: ScreenUtil().setHeight(131.73),
              width: ScreenUtil().setWidth(330.0),
              padding: EdgeInsets.only(
                left: ScreenUtil().setWidth(71.0),
                right: ScreenUtil().setWidth(6.0)
              ),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 3.0,
                      offset: Offset(3,2)
                    )
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(150),
                      bottomLeft: Radius.circular(30.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: ScreenUtil().setHeight(15.3),),
                  RichText(
                    text: TextSpan(
                      text: widget.name,
                      style: TextStyle(
                            fontSize: ScreenUtil().setHeight(22.0),
                            fontFamily: 'helvetica',
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(0.65)
                          ),
                      children: [
                        TextSpan(
                      text: widget.age.toString(),
                      style: TextStyle(
                            fontSize: ScreenUtil().setHeight(22.0),
                            fontFamily: 'helvetica',
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF6CBD45)
                          )
                    )
                      ]
                    ),
                  ),
                  Text(widget.designation,style: TextStyle(
                            fontSize: ScreenUtil().setHeight(15.0),
                            fontFamily: 'helvetica',
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF433F3F).withOpacity(0.35)
                          )),
                  Row(
                    children: [
                      Image.asset('assets/location-pin-17-461649@3x.png',height: ScreenUtil().setHeight(11.0),width: ScreenUtil().setWidth(11.0),),
                      Text(widget.location,style: TextStyle(
                            fontSize: ScreenUtil().setHeight(10.0),
                            fontFamily: 'helvetica',
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF433F3F).withOpacity(0.85)
                          )),
                    ],
                  ),
                  SizedBox(height: ScreenUtil().setHeight(4.3),),
                  Divider(
                    color: Color(0xFF66A5FE).withOpacity(0.59),
                    endIndent: ScreenUtil().setWidth(68.5),
                  ),
                  Text(widget.description,style: TextStyle(
                            fontSize: ScreenUtil().setHeight(10.0),
                            fontFamily: 'helvetica',
                            fontWeight: FontWeight.normal,letterSpacing: 0.1,
                            color: Color(0xFF433F3F).withOpacity(0.85)
                          )),
                ],
              ),
            ),
          ),
          Positioned(
            left: ScreenUtil().setWidth(10.0),
            bottom: ScreenUtil().setHeight(76.9),
            child: Container(
              height: ScreenUtil().setHeight(110.95),
              width: ScreenUtil().setWidth(120.91),
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(image: AssetImage(widget.image),fit: BoxFit.fill),
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(15.0)),
            ),
          ),
          Positioned(
                  bottom: ScreenUtil().setHeight(76.5),
                  left: ScreenUtil().setWidth(108.8),
                                  child: Container(
                      height: ScreenUtil().setHeight(23.77),
                    width: ScreenUtil().setWidth(23.77),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5.0,
                          offset: Offset(1,0)
                        )
                      ]

                    ),
                    child: Center(child: Image.asset('assets/Unknown copy@3x.png',height: 14.0,width: 14.1,),),
                    ),
                )
        ],
      ),
    );
  }
}
