import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/screens/main/home.dart';
import '../../models/address.dart';
import '../../widgets/cards/addressCard.dart';

class DeliveryAddressScr extends StatefulWidget {
  @override
  _DeliveryAddressScrState createState() => _DeliveryAddressScrState();
}

class _DeliveryAddressScrState extends State<DeliveryAddressScr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipPath(
              clipper: WaveClipper(),
              child: Container(
                height: ScreenUtil().setHeight(120.51),
                width: double.infinity,
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(12.0)),
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
                      height: ScreenUtil().setHeight(25.5),
                    ),
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            child: Icon(Icons.arrow_back_ios_rounded,
                                size: 24, color: Colors.white),
                            onTap: () => Navigator.pop(context),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(82.0),
                          ),
                          Text(
                            'Delivery Address',
                            style: TextStyle(
                                fontSize: ScreenUtil().setHeight(18.0),
                                fontFamily: 'helvetica',
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: ScreenUtil().setWidth(25.0),top: ScreenUtil().setHeight(10.5)),
              child: Text(
                'Saved Address',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(18.0),
                    fontFamily: 'helvetica',
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(16.0),
            ),
            Container(
              height: ScreenUtil().setHeight(142.32),
              width: double.infinity,
              margin:
                  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(19.0)),
              padding: EdgeInsets.only(left: ScreenUtil().setWidth(20.5)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 8.0,
                      offset: Offset(5,5)
                    )
                  ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: ScreenUtil().setHeight(10.1),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: ScreenUtil().setWidth(95.0),
                      ),
                      Text(
                        'Default Office',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(15.0),
                            color: Color(0xFF17987D),
                            fontFamily: 'helvetica'),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(127.0),
                      ),
                      Icon(
                        Icons.more_vert_rounded,
                        size: 24.0,
                        color: Color(0xFF19688D),
                      )
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(1.0),
                  ),
                  Text(
                    'Larry ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setSp(15.0),
                        fontFamily: 'helvetica'),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(2.0),
                  ),
                  Text(
                    'Vauxhall, Flat 12,7 Exchange Gardens\nSW81BP',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(15.0),
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF272727).withOpacity(0.6),
                        fontFamily: 'helvetica'),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(6.8),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: ScreenUtil().setWidth(100.2)),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: ScreenUtil().setWidth(132.63),
                        height: ScreenUtil().setHeight(31.1),
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            gradient: LinearGradient(
                                stops: [0.0, 0.5],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xFF30A949), Color(0xFF19688D)]),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade300,
                                  offset: Offset(0, 2),
                                  blurRadius: 3.0)
                            ],
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Center(
                          child: Text(
                            "Deliver here",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'helvatica',
                                height: 1,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: ScreenUtil().setSp(10.0)),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(13.7),
            ),
            ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding:
                  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(19.0)),
              physics: ClampingScrollPhysics(),
              itemCount: deliverAddress.length,
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                height: ScreenUtil().setHeight(10.7),
              ),
              itemBuilder: (BuildContext context, int index) => AddressCard(
                name: deliverAddress[index].name,
                address: deliverAddress[index].address,
                addresstype: deliverAddress[index].addresstype,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(30.7),
            ),
            Center(
              child: Container(
                height: ScreenUtil().setHeight(40.0),
                width: ScreenUtil().setWidth(181.63),
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: Color(0xFF19688D)
                  ),
                  child: Text(
                        "+ Add Address",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'helvatica',
                            height: 1.1,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(16.0)),
                      ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }

  List<Address> deliverAddress = [
    Address(name: 'Larry', address: 'Vauxhall, Flat 12,7 Exchange Gardens\nSW81BP', addresstype: 'Home'),
    Address(name: 'Larry', address: 'Vauxhall, Flat 12,7 Exchange Gardens\nSW81BP', addresstype: 'Home'),
    Address(name: 'Larry', address: 'Vauxhall, Flat 12,7 Exchange Gardens\nSW81BP', addresstype: 'Home'),
  ];
}
