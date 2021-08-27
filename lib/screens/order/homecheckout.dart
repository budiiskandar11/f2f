import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/models/product.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'homeorder.dart';
import '../../widgets/headers/headerHome.dart';
import '../../widgets/caloriesStatusBars/caloriesStats.dart';
import '../../widgets/cards/foodCard.dart';
import '../../widgets/cards/checkoutProductCard.dart';

class HomeCheckoutScr extends StatefulWidget {
  @override
  _HomeCheckoutScrState createState() => _HomeCheckoutScrState();
}

class _HomeCheckoutScrState extends State<HomeCheckoutScr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Column(
          children: [
            HomeHeader(),
            SizedBox(height: ScreenUtil().setHeight(14.5)),
            Container(
              height: ScreenUtil().setHeight(105.0),
              width: double.infinity,
              margin:
                  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(11.5)),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/chorizo-mozarella-gnocchi-bake-cropped-2@3x.png'),
                      fit: BoxFit.cover)),
            ),
            DishCard(),
            SizedBox(height: ScreenUtil().setHeight(12.5)),
            Divider(
              indent: 29.5,
              endIndent: 29.5,
              color: Color(0xFF707070).withOpacity(0.4),
            ),
            SizedBox(height: ScreenUtil().setHeight(10.5)),
            CaloriesStats(),
            SizedBox(height: ScreenUtil().setHeight(13.0)),
            Container(
              height: ScreenUtil().setHeight(43.0),
              width: double.infinity,
              margin:
                  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(25.0)),
              padding: EdgeInsets.only(
                  left: ScreenUtil().setWidth(5.0),
                  right: ScreenUtil().setWidth(10.2)),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0)),
              child: Row(children: [
                Container(
                  height: ScreenUtil().setHeight(35.0),
                  width: ScreenUtil().setWidth(35.0),
                  padding: EdgeInsets.all(ScreenUtil().setWidth(5.3)),
                  decoration: BoxDecoration(
                    color: Color(0xFF19688D),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/discount-svgrepo-com-4@3x.png',
                    height: ScreenUtil().setHeight(24.27),
                    width: ScreenUtil().setWidth(25.29),
                    fit: BoxFit.scaleDown,
                  ),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(18.0),
                ),
                Text(
                  'Available promos',
                  style: TextStyle(
                      fontFamily: 'helvetica',
                      color: Color(0xFF464646).withOpacity(0.7),
                      fontSize: ScreenUtil().setSp(16)),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded,
                    color: Color(0xFF707070), size: 16.12)
              ]),
            ),
            SizedBox(height: ScreenUtil().setHeight(13.0)),
            ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: cartitems.length,
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                height: ScreenUtil().setHeight(16.4),
              ),
              itemBuilder: (BuildContext context, int index) =>
                  CheckoutProductCard(
                name: cartitems[index].name,
                price: cartitems[index].price,
                description: cartitems[index].description,
                image: cartitems[index].image,
                quantity: 1,
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(25.0)),
            GestureDetector(
              onTap: () => pushNewScreen(context, screen: HomeOrderScr()),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: '2 Items ',
                              style: TextStyle(
                                  fontFamily: 'helvetica',
                                  fontSize: ScreenUtil().setSp(17.0),
                                  fontWeight: FontWeight.w700),
                              children: <TextSpan>[
                            TextSpan(
                                text: '(',
                                style: TextStyle(
                                    fontFamily: 'helvetica',
                                    fontSize: ScreenUtil().setSp(15.0),
                                    fontWeight: FontWeight.w800)),
                            TextSpan(
                                text: 'Checkout',
                                style: TextStyle(
                                    fontFamily: 'helvetica',
                                    fontSize: ScreenUtil().setSp(13.0),
                                    fontWeight: FontWeight.w400)),
                            TextSpan(
                                text: ')',
                                style: TextStyle(
                                    fontFamily: 'helvetica',
                                    fontSize: ScreenUtil().setSp(15.0),
                                    fontWeight: FontWeight.w800)),
                          ])),
                      Text('30.00',
                          style: TextStyle(
                              fontFamily: 'helvetica',
                              color: Colors.white,
                              fontSize: ScreenUtil().setSp(15.0),
                              fontWeight: FontWeight.w800))
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(25.0)),
          ],
        )),
      ),
    );
  }

  List<Product> cartitems = [
    Product(
        name: 'Carbonara',
        description:
            'Lorem ipsum is a dummy text used as a Placeholder by the printing industry',
        image: 'assets/chorizo-mozarella-gnocchi-bake-cropped-19@3x.png',
        price: 123,
        time: 0,
        distance: 0),
    Product(
        name: 'Mack cheese',
        description:
            'Lorem ipsum is a dummy text used as a Placeholder by the printing industry',
        image: 'assets/chorizo-mozarella-gnocchi-bake-cropped-19@3x.png',
        price: 123,
        time: 0,
        distance: 0),
    Product(
        name: 'Aglio Olio',
        description:
            'Lorem ipsum is a dummy text used as a Placeholder by the printing industry',
        image: 'assets/chorizo-mozarella-gnocchi-bake-cropped-19@3x.png',
        price: 123,
        time: 0,
        distance: 0),
  ];
}
