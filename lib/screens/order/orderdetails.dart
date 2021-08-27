import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/widgets/cards/orderItemCard.dart';
import 'package:foodtofit/widgets/headers/header.dart';
import '../../models/ordered.dart';

class OrderDetailScr extends StatefulWidget {
  @override
  _OrderDetailScrState createState() => _OrderDetailScrState();
}

class _OrderDetailScrState extends State<OrderDetailScr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Header(
                title: 'Order Details',
                titlepadding: 112.0,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(11.7),
              ),
              Container(
                height: ScreenUtil().setHeight(165.62),
                width: double.infinity,
                margin:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(14.0)),
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(14.0),
                    vertical: ScreenUtil().setHeight(13.0)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 8.0,
                          offset: Offset(2, 5))
                    ]),
                child: Column(
                  children: [
                    Text(
                      'Order Number',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(12.0),
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF272727).withOpacity(0.4),
                          fontFamily: 'helvetica'),
                    ),
                    Text(
                      '5728',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(22.0),
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF19688D),
                          fontFamily: 'helvetica'),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(15.0),
                    ),
                    deliveryDetail('Delivered from', 'Sainsbury’s', 8.0),
                    SizedBox(
                      height: ScreenUtil().setHeight(9.0),
                    ),
                    deliveryDetail('Delivered to',
                        'Vauxhall, Flat 12,7 Exchange Gardens\nSW81BP', 23.5),
                    SizedBox(
                      height: ScreenUtil().setHeight(9.0),
                    ),
                    deliveryDetail('Status', 'Delivered 14 March 2021', 51.5),
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(11.7),
              ),
              Text(
                'Items and Payements',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(15.0),
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF17987D).withOpacity(0.6),
                    fontFamily: 'helvetica'),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(15.0),
              ),
              ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: ordered.length,
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  height: ScreenUtil().setHeight(12.0),
                ),
                itemBuilder: (BuildContext context, int index) => OrderedItemCard(
                    name: ordered[index].name,
                    quantity: ordered[index].quantity,
                    price: ordered[index].price),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(14.5),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: ScreenUtil().setWidth(159.5),
                    right: ScreenUtil().setWidth(14.5)),
                child: Divider(
                  color: Color(0xFF707070).withOpacity(0.4),
                  thickness: 2,
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(14.5),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: ScreenUtil().setWidth(22.0),
                    right: ScreenUtil().setWidth(15.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Total',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(15.0),
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF393737).withOpacity(0.8),
                          fontFamily: 'helvetica'),
                    ),
                    Text(
                      '\$19.44',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(15.0),
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF19688D),
                          fontFamily: 'helvetica'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(9.0),
              ),
              Padding(
                padding: EdgeInsets.only(right:ScreenUtil().setWidth(15.0)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),
                    Text(
                      'Paid with  ',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(11.0),
                          color: Color(0xFF686868),
                          fontFamily: 'helvetica'),
                    ),
                    SizedBox(width: ScreenUtil().setWidth(3.1),),
                    Image.asset('assets/mastercard-2-logo-svgrepo-com@3x.png',height: 8.59,width: 13.9,),
                    SizedBox(width: ScreenUtil().setWidth(3.1),),
                    Text(
                      '****',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        height: 1.8,
                          fontSize: ScreenUtil().setSp(11.0),
                          fontFamily: 'helvetica'),
                    ),
                    Text(
                      '1234',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(11.0),
                          fontFamily: 'helvetica'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Ordered> ordered = [
    Ordered(
        quantity: 1,
        name: 'Sainbury’s Woodland Free Range Large Eggs',
        price: 1.23),
    Ordered(
        quantity: 1,
        name: 'Sainbury’s Woodland Free Range Large Eggs',
        price: 1.23),
    Ordered(
        quantity: 1,
        name: 'Sainbury’s Woodland Free Range Large Eggs',
        price: 1.23),
    Ordered(
        quantity: 1,
        name: 'Sainbury’s Woodland Free Range Large Eggs',
        price: 1.23),
    Ordered(
        quantity: 1,
        name: 'Sainbury’s Woodland Free Range Large Eggs',
        price: 1.23),
    Ordered(
        quantity: 1,
        name: 'Sainbury’s Woodland Free Range Large Eggs',
        price: 1.23),
    Ordered(
        quantity: 1,
        name: 'Sainbury’s Woodland Free Range Large Eggs',
        price: 1.23),
    Ordered(
        quantity: 1,
        name: 'Sainbury’s Woodland Free Range Large Eggs',
        price: 1.23),
    Ordered(
        quantity: 1,
        name: 'Sainbury’s Woodland Free Range Large Eggs',
        price: 1.23),
    Ordered(
        quantity: 1,
        name: 'Sainbury’s Woodland Free Range Large Eggs',
        price: 1.23),
    Ordered(
        quantity: 1,
        name: 'Sainbury’s Woodland Free Range Large Eggs',
        price: 1.23),
    Ordered(
        quantity: 1,
        name: 'Sainbury’s Woodland Free Range Large Eggs',
        price: 1.23),
    Ordered(
        quantity: 1,
        name: 'Sainbury’s Woodland Free Range Large Eggs',
        price: 1.23),
    Ordered(
        quantity: 1,
        name: 'Sainbury’s Woodland Free Range Large Eggs',
        price: 1.23),
    Ordered(
        quantity: 1,
        name: 'Sainbury’s Woodland Free Range Large Eggs',
        price: 1.23)
  ];

  deliveryDetail(String title, String value, double padding) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: ScreenUtil().setSp(11.0),
              fontWeight: FontWeight.w400,
              color: Color(0xFF272727).withOpacity(0.6),
              fontFamily: 'helvetica'),
        ),
        SizedBox(
          width: ScreenUtil().setWidth(padding),
        ),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.left,
            style: TextStyle(
                height: 1,
                fontSize: ScreenUtil().setSp(14.0),
                fontWeight: FontWeight.normal,
                color: Color(0xFF19688D),
                fontFamily: 'helvetica'),
          ),
        )
      ],
    );
  }
}
