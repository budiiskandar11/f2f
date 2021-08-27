import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderCard extends StatefulWidget {
  final String image;
  final String name;
  final String date;
  final double price;
  final bool status;
  final VoidCallback navigation;

  const OrderCard({
    @required this.image, 
    @required this.name, 
    @required this.date, 
    @required this.price, 
    @required this.status,
    @required this.navigation
  });

  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.navigation,
          child: Container(
              height: ScreenUtil().setHeight(68.32),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
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
                    widget.status ? 'Delivered' : 'Pending',
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
                        widget.name,
                        style: TextStyle(
                          height: 1.6,
                            fontSize: ScreenUtil().setSp(13.0),
                            fontFamily: 'helvetica',
                            color: Color(0xFF272727)),
                      ),
                      Row(
                        children: [
                          Text(
                            '\$${widget.price.toString()}',
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(13.0),
                                fontFamily: 'helvetica',
                                color: Color(0xFF272727).withOpacity(0.6)),
                          ),
                          Container(
                            height: ScreenUtil().setHeight(12.0),
                            child: VerticalDivider(color: Color(0xFF272727).withOpacity(0.1))),
                          Text(
                            widget.date,
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(13.0),
                                fontFamily: 'helvetica',
                                color: Color(0xFF272727).withOpacity(0.6)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  trailing: GestureDetector(
                    onTap: (){},
                      child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 16.0,
                  )),
                ),
              ),
            ),
    );
  }
}