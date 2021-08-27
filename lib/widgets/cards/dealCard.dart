import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DealCard extends StatefulWidget {
  final String image;

  DealCard({@required this.image});

  @override
  _DealCardState createState() => _DealCardState();
}

class _DealCardState extends State<DealCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
      width: ScreenUtil().setWidth(170),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                blurRadius: 6,
                color: Colors.black.withOpacity(0.16),
                offset: Offset(2, 2))
          ],
          image: DecorationImage(
              image: AssetImage(widget.image), fit: BoxFit.fill)),
    );
  }
}
