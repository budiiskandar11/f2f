import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/screens/main/home.dart';
import 'package:foodtofit/screens/order/ongoing.dart';
import 'package:foodtofit/screens/order/orderdetails.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import '../../models/order.dart';
import '../../widgets/cards/orderCard.dart';

class MyOrderScr extends StatefulWidget {
  @override
  _MyOrderScrState createState() => _MyOrderScrState();
}

class _MyOrderScrState extends State<MyOrderScr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: WaveClipper(),
            child: Container(
              height: ScreenUtil().setHeight(134.51),
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
                    height: ScreenUtil().setHeight(15.5),
                  ),
                  Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            icon: Icon(Icons.arrow_back_ios_rounded, size: 24),
                            color: Colors.white,
                            onPressed: () => Navigator.pop(context)),
                        SizedBox(
                          width: ScreenUtil().setWidth(92.0),
                        ),
                        Text(
                          'My Order',
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
          Row(
            children: [
              SizedBox(width: ScreenUtil().setWidth(38.0)),
              Text(
                'Ongoing',
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(18.0),
                    fontFamily: 'helvetica',
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                  child: Divider(
                indent: ScreenUtil().setWidth(9.5),
                color: Color(0xFF30A949),
              ))
            ],
          ),
          SizedBox(
            height: ScreenUtil().setHeight(14.0),
          ),
          GestureDetector(
            onTap: () => pushNewScreen(context, screen: OnGoingScr()),
                      child: Container(
              height: ScreenUtil().setHeight(68.32),
              width: double.infinity,
              margin:
                  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(19.0)),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Center(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 27.5,
                    child: Image.asset(
                      'assets/chorizo-mozarella-gnocchi-bake-cropped-1@3x.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  title: Text(
                    'Ariving',
                    style: TextStyle(
                        fontSize: ScreenUtil().setSp(11.0),
                        fontFamily: 'helvetica',
                        color: Color(0xFF272727)),
                  ),
                  subtitle: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mack Cheese',
                        style: TextStyle(
                          height: 1.6,
                            fontSize: ScreenUtil().setSp(13.0),
                            fontFamily: 'helvetica',
                            color: Color(0xFF272727)),
                      ),
                      Text(
                        '\$20.23',
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(13.0),
                            fontFamily: 'helvetica',
                            color: Color(0xFF272727).withOpacity(0.6)),
                      ),
                    ],
                  ),
                  trailing: GestureDetector(
                    onTap: () {},
                      child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 16.0,
                  )),
                ),
              ),
            ),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(32.7),
          ),
          Row(
            children: [
              SizedBox(width: ScreenUtil().setWidth(38.0)),
              Text(
                'Completed',
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(18.0),
                    fontFamily: 'helvetica',
                    fontWeight: FontWeight.bold),
              ),
              Expanded(
                  child: Divider(
                indent: ScreenUtil().setWidth(10.5),
                color: Color(0xFF19688D),
              ))
            ],
          ),
          SizedBox(
            height: ScreenUtil().setHeight(34.0),
          ),
          ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding:
                  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(19.0)),
              physics: ClampingScrollPhysics(),
              itemCount: orderDelivered.length,
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                    height: ScreenUtil().setHeight(10.7),
                  ),
              itemBuilder: (BuildContext context, int index) => 
                OrderCard(
                  image: orderDelivered[index].image,
                  name: orderDelivered[index].name,
                  date: orderDelivered[index].date,
                  price: orderDelivered[index].price,
                  status: orderDelivered[index].status,
                  navigation: () => pushNewScreen(context, screen: OrderDetailScr(), withNavBar: false)
                ),
              ),
          SizedBox(
            height: ScreenUtil().setHeight(17.0),
          ),
        ],
      ),
    ));
  }

  List<Order> orderDelivered = [
    Order(image: 'assets/asset-6@3x.png', name: 'Mack Cheese', status: true, date: '3 March', price: 20.23),
    Order(image: 'assets/a0000460_main@3x.png', name: 'Mack Cheese', status: true, date: '3 March', price: 20.23),
    Order(image: 'assets/italian-food-3@3x.png', name: 'Mack Cheese', status: true, date: '3 March', price: 20.23),
    Order(image: 'assets/1-carlsjr@3x.png', name: 'Mack Cheese', status: true, date: '3 March', price: 20.23),
    Order(image: 'assets/chinese-food@3x.png', name: 'Mack Cheese', status: true, date: '3 March', price: 20.23),
    Order(image: 'assets/chorizo-mozarella-gnocchi-bake-cropped-1@3x.png', name: 'Mack Cheese', status: true, date: '3 March', price: 20.23)
  ];
}
