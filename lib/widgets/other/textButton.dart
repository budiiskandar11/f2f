import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TempTextButton extends StatefulWidget {
  final String text;
  final double textSize;
  final VoidCallback onPressed;
  final double height;
  final double width;

  TempTextButton(
      {@required this.text,
      @required this.textSize,
      @required this.onPressed,
      @required this.height,
      @required this.width});
  @override
  _TempTextButtonState createState() => _TempTextButtonState();
}

class _TempTextButtonState extends State<TempTextButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
          child: Container(
        width: ScreenUtil().setWidth(widget.width),
        height: ScreenUtil().setHeight(widget.height),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          
          gradient: LinearGradient(
            stops: [0.0, 0.65],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF6CBD45),
              Color(0xFF30A949)
            ]
          ),
          boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0.4, 0.9),
                  spreadRadius: 5.0,
                  blurRadius: 5.0)
            ],
          borderRadius: BorderRadius.circular(30.0)
        ),
        child: Center(
          child: Text(
            widget.text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'helvatica',
              height: 1,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: ScreenUtil().setSp(widget.textSize)),
          ),
        ),
      ),
    );
  }
}
