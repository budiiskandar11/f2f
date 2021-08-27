import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/screens/features/chat.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class PlansCard extends StatefulWidget {
  final String image;
  final String name;
  final String type;
  final String status;
  final int reviews;
  final int rp;
  final double rating;

  const PlansCard(
      {this.image,
      this.name,
      this.type,
      this.status,
      this.reviews,
      this.rp,
      this.rating});

  @override
  _PlansCardState createState() => _PlansCardState();
}

class _PlansCardState extends State<PlansCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(109.0),
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(12.5)),
      padding: EdgeInsets.all(ScreenUtil().setHeight(4.0)),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 3.0,
            offset: Offset(2,4)
          )
        ],
          color: Colors.white, borderRadius: BorderRadius.circular(15.0)),
      child: Row(
        children: [
          Container(
            height: ScreenUtil().setHeight(101.0),
            width: ScreenUtil().setWidth(99.0),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                    image: AssetImage(widget.image), fit: BoxFit.fill)),
          ),
          SizedBox(
            width: ScreenUtil().setWidth(13.5),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: ScreenUtil().setHeight(5.0),
                ),
                Padding(
                  padding: EdgeInsets.only(right: ScreenUtil().setWidth(6.6)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.name,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: ScreenUtil().setSp(17.0),
                            color: Color(0xFF393737),
                            fontFamily: 'helvetica'),
                      ),
                      Spacer(),
                      Container(
                        height: ScreenUtil().setHeight(11.0),
                        width: ScreenUtil().setWidth(11.0),
                        decoration: BoxDecoration(
                            color: widget.status == 'Online'
                                ? Color(0XFF63E326)
                                : widget.status == 'Busy'
                                    ? Color(0xFFD62424)
                                    : Colors.grey.shade600,
                            shape: BoxShape.circle),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(3.6),
                      ),
                      Text(
                        widget.status,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: ScreenUtil().setSp(10.0),
                            color: widget.status == 'Online'
                                ? Color(0XFF63E326)
                                : widget.status == 'Busy'
                                    ? Color(0xFFD62424)
                                    : Colors.grey.shade600,
                            fontFamily: 'helvetica'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: ScreenUtil().setHeight(4.0)),
                Text(
                  widget.type,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: ScreenUtil().setSp(13.0),
                      color: Color(0xFF686868),
                      fontFamily: 'helvetica'),
                ),
                SizedBox(height: ScreenUtil().setHeight(5.0)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.star,
                      size: 16.0,
                      color: Colors.green.shade600,
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(3.6),
                    ),
                    Text(
                      widget.rating.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenUtil().setSp(12.0),
                          color: Colors.green.shade600,
                          fontFamily: 'helvetica'),
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(3.6),
                    ),
                    Text(
                      '  (${widget.reviews.toString()} reviews)',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: ScreenUtil().setSp(11.0),
                          color: Colors.grey.withOpacity(0.7),
                          fontFamily: 'helvetica'),
                    ),
                  ],
                ),
                SizedBox(height: ScreenUtil().setHeight(4.0)),
                Padding(
                  padding: EdgeInsets.only(right: ScreenUtil().setWidth(23.1)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Rp ${widget.rp.toString()}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: ScreenUtil().setSp(13.0),
                            color: Color(0xFF17987D),
                            fontFamily: 'helvetica'),
                      ),
                      Spacer(),
                      ImageIcon(AssetImage('assets/iconfinder_calendar_-1@3x.png'),color: Color(0xFF19688D),size: 20.0,),
                      SizedBox(
                        width: ScreenUtil().setWidth(24.2),
                      ),
                      GestureDetector(
                        onTap: () => pushNewScreen(context, screen: ChatScr(), withNavBar: false),
                        child: ImageIcon(AssetImage('assets/iconfinder_multimedia-1@3x.png'),color: Color(0xFF19688D),size: 20.0)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
