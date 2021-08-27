import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class ExtraDressing extends StatefulWidget {
  final String label;
  final int calories;
  final double priceadd;
  bool isadded;

  ExtraDressing(
      {@required this.label, @required this.calories, @required this.priceadd, @required this.isadded});

  @override
  _ExtraDressingState createState() => _ExtraDressingState();
}

class _ExtraDressingState extends State<ExtraDressing> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: ScreenUtil().setHeight(21.0),
      padding: EdgeInsets.only(right: ScreenUtil().setWidth(18.0)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
              flex: 2,
              child: Text(widget.label,
                  style: TextStyle(
                      fontFamily: 'helvetica',
                      fontSize: ScreenUtil().setSp(14.0),
                      fontWeight: FontWeight.w400))),
          Text(
            '${widget.calories.toString()} Cal',
            style: TextStyle(
            color: Color(0xFF6CBD45),
            fontWeight: FontWeight.bold,
            fontFamily: 'helvetica',
            fontSize: ScreenUtil().setSp(13.0)),
          ),
          Spacer(),
          Text(
            '+${widget.priceadd.toString()}',
            style: TextStyle(
          fontFamily: 'helvetica',
          fontSize: ScreenUtil().setSp(14.0),
          color: Color(0xFF19688D),
            ),
          ),
          SizedBox(width: ScreenUtil().setWidth(15.0),),
          StatefulBuilder(builder: (_,state) =>
            GestureDetector(
              onTap: () => state(() { widget.isadded = !widget.isadded; }),
                          child: Container(
                height: ScreenUtil().setHeight(21.0),
                width: ScreenUtil().setWidth(21.0),
                decoration: BoxDecoration(
                  color: !widget.isadded?Color(0xFFEBEBEB):Colors.blue[800],
                  borderRadius: BorderRadius.circular(6.0)
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}
