import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/models/product.dart';
import 'package:foodtofit/screens/order/invoice.dart';
import 'package:foodtofit/widgets/caloriesStatusBars/caloriesStats.dart';
import 'package:foodtofit/widgets/other/dailogBox.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import '../../widgets/headers/headerHome.dart';
import '../../widgets/cards/dishOrderCard.dart';
import '../../widgets/cards/orderProductCard.dart';

class HomeOrderScr extends StatefulWidget {
  @override
  _HomeOrderScrState createState() => _HomeOrderScrState();
}

class _HomeOrderScrState extends State<HomeOrderScr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(15.0)),
              child: Column(
            children: [
              HomeHeader(),
              SizedBox(height: ScreenUtil().setHeight(3.5)),
              Container(
                height: ScreenUtil().setHeight(105.0),
                width: double.infinity,
                margin:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(11.5)),
                padding: EdgeInsets.only(
                    left: ScreenUtil().setWidth(5.0),
                    right: ScreenUtil().setWidth(5.0),
                    top: ScreenUtil().setHeight(61.0),
                    bottom: ScreenUtil().setHeight(6.0)),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/chorizo-mozarella-gnocchi-bake-cropped-2@3x.png'),
                        fit: BoxFit.cover)),
                child: Container(
                  height: ScreenUtil().setHeight(38.0),
                  width: double.infinity,
                  padding: EdgeInsets.only(
                      left: ScreenUtil().setWidth(11.0),
                      right: ScreenUtil().setWidth(16.0)),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.95),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Fit Pasta',
                          style: TextStyle(
                              fontFamily: 'helvetica',
                              color: Colors.black,
                              fontSize: ScreenUtil().setSp(17.0),
                              fontWeight: FontWeight.w800)),
                      RichText(
                          text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: 'Total     ',
                            style: TextStyle(
                              fontFamily: 'helvetica',
                              color: Color(0xFF686868),
                              fontSize: ScreenUtil().setSp(15.0),
                            )),
                        TextSpan(
                            text: '30.00',
                            style: TextStyle(
                                fontFamily: 'helvetica',
                                color: Color(0xFF17987D),
                                fontSize: ScreenUtil().setSp(17.0),
                                fontWeight: FontWeight.w800)),
                      ]))
                    ],
                  ),
                ),
              ),
              DishCardOrder(),
              SizedBox(height: ScreenUtil().setHeight(13.5)),
              Container(
                height: ScreenUtil().setHeight(43.0),
                width: double.infinity,
                margin:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(25.0)),
                padding: EdgeInsets.only(
                    left: ScreenUtil().setWidth(15.0),
                    right: ScreenUtil().setWidth(14.2)),
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
                child: Row(children: [
                  Container(
                    height: ScreenUtil().setHeight(35.0),
                    width: ScreenUtil().setWidth(35.0),
                    padding: EdgeInsets.all(ScreenUtil().setWidth(5.3)),
                    color: Colors.transparent,
                    child: Image.asset(
                      'assets/delivery-svgrepo-com@3x.png',
                      height: ScreenUtil().setHeight(25.16),
                      width: ScreenUtil().setWidth(28.84),
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(17.0),
                  ),
                  Text(
                    'Delivery (Delivery in 15 min)',
                    style: TextStyle(
                        fontFamily: 'helvetica',
                        height: 1.4,
                        color: Color(0xFF464646).withOpacity(0.7),
                        fontSize: ScreenUtil().setSp(13.0)),
                  ),
                  Spacer(),
                  Text(
                    'CHANGE',
                    style: TextStyle(
                        fontFamily: 'helvetica',
                        height: 1.4,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF17987D).withOpacity(0.7),
                        fontSize: ScreenUtil().setSp(12.0)),
                  ),
                ]),
              ),
              SizedBox(height: ScreenUtil().setHeight(2.5)),
              Divider(
                indent: 29.5,
                endIndent: 29.5,
                color: Color(0xFF707070).withOpacity(0.2),
              ),
              SizedBox(height: ScreenUtil().setHeight(8.9)),
              CaloriesStats(),
              SizedBox(height: ScreenUtil().setHeight(13.0)),
              ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: cartitems.length,
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  height: ScreenUtil().setHeight(11.1),
                ),
                itemBuilder: (BuildContext context, int index) => OrderProductCard(
                  name: cartitems[index].name,
                  price: cartitems[index].price,
                  description: cartitems[index].description,
                  image: cartitems[index].image,
                  quantity: 1,
                ),
              ),
              selectpayment == true ? Column(
                  children: [
                    SizedBox(height: ScreenUtil().setHeight(9.0)),
                    GestureDetector(
                      onTap: () => showPaymentOption(),
                                child: Container(
                        height: ScreenUtil().setHeight(53.0),
                        width: double.infinity,
                        color: Color(0xFFDBDBDB),
                        child: Center(
                          child: Text('Select Payment',style: TextStyle(color: Color(0xFF19688D),fontSize: ScreenUtil().setSp(17.0)),),
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(9.0)),
                  ],
                ) : SizedBox(height: ScreenUtil().setHeight(43.0)),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => selectpayment == true ? pushNewScreen(context, screen: InvoiceScr(),withNavBar: false) : showPaymentOption(),
                    child: Container(
                      width: ScreenUtil().setWidth(300.0),
                      height: ScreenUtil().setHeight(48.45),
                      margin:
                          EdgeInsets.only(left: ScreenUtil().setWidth(27.0)),
                      padding: EdgeInsets.only(
                          left: ScreenUtil().setWidth(108.5),
                          right: ScreenUtil().setWidth(24.0)),
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          gradient: LinearGradient(
                              stops: [0.0, 0.5],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Color(0xFF17987D), Color(0xFF19688D)]),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.16),
                                offset: Offset(1, 3),
                                blurRadius: 5.0)
                          ],
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('OrderNow',
                              style: TextStyle(
                                  fontFamily: 'helvetica',
                                  color: Colors.white,
                                  fontSize: ScreenUtil().setSp(15.0),
                                  fontWeight: FontWeight.w800)),
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
                   GestureDetector(
                      onTap: () => setState((){selectpayment = !selectpayment;}),
                                    child: Padding(
                        padding: EdgeInsets.only(right:ScreenUtil().setWidth(24.0)),
                        child: Icon(Icons.more_vert_rounded,color: Color(0xFF19688D),size: 34,),
                      )
                  )
                ],
              ),
            ],
          ),
      )
      ),
    );

    
  }
  bool selectpayment = false;
  showPaymentOption() {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.transparent.withOpacity(0.3),
      transitionDuration: Duration(milliseconds: 500),
      context: context,
      pageBuilder: (_, __, ___) {
        return paymentOptionDialog(context);
      },
    );
  }

  List<Product> cartitems = [
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