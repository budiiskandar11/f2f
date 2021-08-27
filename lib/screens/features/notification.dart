import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/screens/features/recentdata.dart';
import 'package:foodtofit/widgets/headers/header.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import '../../models/notification.dart';
import '../../widgets/cards/notificationCard.dart';

class NotificationScr extends StatefulWidget {
  @override
  _NotificationScrState createState() => _NotificationScrState();
}

class _NotificationScrState extends State<NotificationScr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Header(title: 'Notifications',titlepadding: 112.0,),
              SizedBox(
                height: ScreenUtil().setHeight(27.5),
              ),
              NotificationCard(
                image: 'assets/chorizo-mozarella-gnocchi-bake-cropped-1@3x.png',
                title: 'Mack Cheese',
                description: 'Your order have been placed',
                time: '13:00',
              ),
              SizedBox(
                height: ScreenUtil().setHeight(11.7),
              ),
              Container(
                height: ScreenUtil().setHeight(70.32),
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(19.0)),
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
                child: Center(
                  child: ListTile(
                    onTap: () => pushNewScreen(context, screen: RecentDataScr(),withNavBar: false),
                    title: Text(
                      'Weekly Progress',
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(13.0),
                          fontFamily: 'helvetica',
                          color: Color(0xFF272727),
                          fontWeight: FontWeight.normal),
                    ),
                    subtitle: Text(
                      'Please fill in your weekly data form',
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(11.0),
                          fontFamily: 'helvetica',
                          color: Color(0xFF272727).withOpacity(0.4),
                          fontWeight: FontWeight.normal),
                    ),
                    trailing: Text(
                      '09:00',
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(11.0),
                          fontFamily: 'helvetica',
                          color: Color(0xFF272727),
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(11.7),
              ),
              ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: notifications.length,
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                height: ScreenUtil().setHeight(11.7),
              ),
              itemBuilder: (BuildContext context, int index) => NotificationCard(
                image: notifications[index].image,
                title: notifications[index].title,
                description: notifications[index].description,
                time: notifications[index].time,
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
  List<MyNotification> notifications = [
    MyNotification(image: 'assets/italian-food-3@3x.png', title: 'Spaghetti Bolognese', description: '', time: '09:00'),
    MyNotification(image: 'assets/asset-6@3x.png', title: 'McDonald’s', description: 'Check out our new family deal', time: '24hr ago')
  ];
}
