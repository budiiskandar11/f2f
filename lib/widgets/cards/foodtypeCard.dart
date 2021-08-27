import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodTypeCard extends StatefulWidget {
  final String image;
  final String type;

  FoodTypeCard({
    @required this.image,
    @required this.type
  });

  @override
  _FoodTypeCardState createState() => _FoodTypeCardState();
}

class _FoodTypeCardState extends State<FoodTypeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
                    width: ScreenUtil().setWidth(46.0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(widget.image),
                          fit: BoxFit.fill),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.16),
                            offset: Offset(1, 2),
                            spreadRadius: 2.0,
                            blurRadius: 2.0)
                      ],
                    ),
                    child: Center(
                      child: Text(
                        widget.type,
                        style: TextStyle(
                            fontFamily: 'helvatica',
                            height: 1.0,
                            fontWeight: FontWeight.w800,
                            fontSize: ScreenUtil().setSp(7.0),
                            color: Colors.white),
                      ),
                    ),
                  );
  }
}