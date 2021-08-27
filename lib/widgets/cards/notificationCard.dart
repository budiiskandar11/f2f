import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationCard extends StatefulWidget {
  final String image;
  final String title;
  final String time;
  final String description;

  const NotificationCard({
    this.image, 
    this.title, 
    this.description,
    this.time
  });

  @override
  _NotificationCardState createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                offset: Offset(5, 5))
          ]),
      child: Center(
        child: ListTile(
          leading: CircleAvatar(
            radius: 27.5,
            child: Image.asset(
              widget.image,
              fit: BoxFit.fill,
            ),
          ),
          title: Text(
            widget.title,
            style: TextStyle(
                fontSize: ScreenUtil().setSp(13.0),
                fontFamily: 'helvetica',
                color: Color(0xFF272727),
                fontWeight: FontWeight.normal),
          ),
          subtitle: Text(
            widget.description,
            style: TextStyle(
                fontSize: ScreenUtil().setSp(11.0),
                fontFamily: 'helvetica',
                color: Color(0xFF272727).withOpacity(0.4),
                fontWeight: FontWeight.normal),
          ),
          trailing: Text(
            widget.time,
            style: TextStyle(
                fontSize: ScreenUtil().setSp(11.0),
                fontFamily: 'helvetica',
                color: Color(0xFF272727),
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
    );
  }
}
