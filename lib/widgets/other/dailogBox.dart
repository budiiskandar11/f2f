import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/screens/order/ongoing.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import '../../models/nutrients.dart';

Widget nutritionDialog(BuildContext context) {
  return Material(
    type: MaterialType.transparency,
    child: BlurryContainer(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      bgColor: Colors.transparent,
      borderRadius: BorderRadius.circular(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: ScreenUtil().setHeight(35.0)),
          Container(
            height: ScreenUtil().setHeight(45.0),
            width: ScreenUtil().setWidth(246.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
            child: Center(
                child: Text('Nutritions',
                    style: TextStyle(
                        fontFamily: 'helvetica',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF30A949),
                        fontSize: ScreenUtil().setSp(18.0)))),
          ),
          SizedBox(height: ScreenUtil().setHeight(22.0)),
          Container(
            height: ScreenUtil().setHeight(695.0),
            width: double.infinity,
            margin:
                EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(8.0)),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
            child: ListView.separated(
              itemCount: nutrients.length,
              itemBuilder: (context, index) {
                return nutrienttile(
                  nutrients[index].name,
                  nutrients[index].quantity,
                );
              },
              separatorBuilder: (context, index) {
                return Divider(indent: 31.5, endIndent: 31.5);
              },
            ),
          ),
        ],
      ),
    ),
  );
}

paymentOptionDialog(BuildContext context) {
  return Material(
    type: MaterialType.transparency,
    child: BlurryContainer(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      bgColor: Colors.transparent,
      borderRadius: BorderRadius.circular(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: ScreenUtil().setHeight(186.84),
            width: double.infinity,
            margin:
                EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(12.0)),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
            child: Column(
              children: [
                SizedBox(
                  height: ScreenUtil().setHeight(18),
                ),
                Text('Select payment method',
                    style: TextStyle(
                        fontFamily: 'helvetica',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF686868),
                        fontSize: ScreenUtil().setSp(20.0))),
                SizedBox(
                  height: ScreenUtil().setHeight(3.5),
                ),
                Divider(indent: 27.5, endIndent: 27.5),
                SizedBox(
                  height: ScreenUtil().setHeight(3.5),
                ),
                ListTile(
                  onTap: () => pushNewScreen(context,
                      screen: OnGoingScr(), withNavBar: false),
                  leading: CircleAvatar(
                    backgroundColor: Color(0xFF17987D),
                    radius: ScreenUtil().setHeight(17.5),
                    child: Image.asset(
                      'assets/wallet-svgrepo-com@3x.png',
                      height: ScreenUtil().setHeight(18.77),
                      width: ScreenUtil().setWidth(23.0),
                    ),
                  ),
                  title: Text('GoPay',
                      style: TextStyle(
                          fontFamily: 'helvetica',
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF171717),
                          fontSize: ScreenUtil().setSp(16.0))),
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Delivery 9.00',
                          style: TextStyle(
                              fontFamily: 'helvetica',
                              color: Color(0xFF171717),
                              fontSize: ScreenUtil().setSp(14.0))),
                      RichText(
                          text: TextSpan(
                              text: 'You save ',
                              style: TextStyle(
                                  fontFamily: 'helvetica',
                                  color: Color(0xFF686868),
                                  fontSize: ScreenUtil().setSp(15.0)),
                              children: <TextSpan>[
                            TextSpan(
                                text: '4.00',
                                style: TextStyle(color: Color(0xFF6CBD45)))
                          ]))
                    ],
                  ),
                ),
                ListTile(
                  onTap: () => pushNewScreen(context,
                      screen: OnGoingScr(), withNavBar: false),
                  leading: CircleAvatar(
                    backgroundColor: Color(0xFF19688D),
                    radius: ScreenUtil().setHeight(17.5),
                    child: Image.asset(
                      'assets/cash-svgrepo-com@3x.png',
                      height: ScreenUtil().setHeight(18.77),
                      width: ScreenUtil().setWidth(23.0),
                    ),
                  ),
                  title: Text('Cash',
                      style: TextStyle(
                          fontFamily: 'helvetica',
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF171717),
                          fontSize: ScreenUtil().setSp(16.0))),
                  trailing: Text('Delivery 13.00',
                      style: TextStyle(
                          fontFamily: 'helvetica',
                          color: Color(0xFF171717),
                          fontSize: ScreenUtil().setSp(14.0))),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

showPaymentOption(BuildContext context) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0))),
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: ScreenUtil().setHeight(264.91),
          color: Colors.transparent,
          child: Column(
            children: [
              SizedBox(
                height: ScreenUtil().setHeight(19.5),
              ),
              Text(
                'Choose payment method',
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(20.0),
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF19688D)),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(17.7),
              ),
              Divider(
                indent: ScreenUtil().setHeight(27.5),
                endIndent: ScreenUtil().setHeight(27.5),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(10.3),
              ),
              ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: paymentoptions.length,
                separatorBuilder: (BuildContext context, int index) => Divider(
                  indent: ScreenUtil().setHeight(27.5),
                  height: ScreenUtil().setHeight(30.0),
                  endIndent: ScreenUtil().setHeight(27.5),
                ),
                itemBuilder: (BuildContext context, int index) => Container(
                  child: Row(
                    children: [
                      StatefulBuilder(builder: (_, state) {
                        return GestureDetector(
                          onTap: () => state(() {
                            isSelected[index] = !isSelected[index];
                          }),
                          child: Container(
                            height: ScreenUtil().setHeight(31.0),
                            width: ScreenUtil().setWidth(31.0),
                            margin: EdgeInsets.only(
                                left: ScreenUtil().setWidth(25.0)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: isSelected[index] == false
                                    ? Color(0xFFD9E3E1)
                                    : Color(0xFF19688D),
                                border: Border.all(
                                    color: Color(0xFF686868).withOpacity(0.26),
                                    width: 1.0)),
                          ),
                        );
                      }),
                      SizedBox(
                        width: ScreenUtil().setWidth(26.0),
                      ),
                      Text(
                        paymentoptions[index],
                        style: TextStyle(
                            fontSize: ScreenUtil().setSp(16.0),
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF171717)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      });
}

List<String> paymentoptions = ['GoPay', 'OVO', 'Dana'];
List<bool> isSelected = [false, false, false];

nutrienttile(String name, double quantity) {
  return Padding(
    padding: EdgeInsets.only(
      left: ScreenUtil().setWidth(19.0),
      right: ScreenUtil().setWidth(26.0),
      bottom: ScreenUtil().setHeight(4.5),
      top: ScreenUtil().setHeight(2.5),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyle(
              fontSize: ScreenUtil().setSp(15.0), color: Color(0xFF242424)),
        ),
        Text(
          '${quantity.toString()} g',
          style: TextStyle(
              fontSize: ScreenUtil().setSp(15.0), color: Color(0xFF19688D)),
        )
      ],
    ),
  );
}

List<Nutrient> nutrients = [
  Nutrient(name: 'Protein', quantity: 2.0),
  Nutrient(name: 'Carbohydrates', quantity: 1.0),
  Nutrient(name: 'Fiber', quantity: 5.0),
  Nutrient(name: 'Sugars', quantity: 5.0),
  Nutrient(name: 'Fat', quantity: 3.0),
  Nutrient(name: 'Saturated', quantity: 9.0),
  Nutrient(name: 'Polyunsaturated', quantity: 5.0),
  Nutrient(name: 'Monounsaturated ', quantity: 5.0),
  Nutrient(name: 'Trans', quantity: 5.0),
  Nutrient(name: 'Cholesterol', quantity: 5.0),
  Nutrient(name: 'Sodium', quantity: 5.0),
  Nutrient(name: 'Potassium', quantity: 5.0),
  Nutrient(name: 'Vitamin A', quantity: 5.0),
  Nutrient(name: 'Vitamin C', quantity: 5.0),
  Nutrient(name: 'Calcium', quantity: 5.0),
  Nutrient(name: 'Iron', quantity: 5.0),
];
