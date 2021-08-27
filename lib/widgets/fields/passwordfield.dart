import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class PasswordField extends StatefulWidget {
  final String hint;
  final String error;
  final Color borderColor;
  final TextInputType inputType;
  Color textColor;
  final double borderWidth;
  final TextEditingController controller;

  PasswordField({
    @required this.hint,
    @required this.error,
    @required this.borderColor,
    @required this.inputType,
    this.textColor,
    @required this.controller,
    @required this.borderWidth,
  });
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obsecure = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.inputType,
      cursorColor: Theme.of(context).primaryColor,
      obscureText: widget.hint == 'Enter your password' ||
              widget.hint == 'Confirm password'
          ? obsecure
          : false,
      controller: widget.controller,
      style: TextStyle(
          fontFamily: 'helvatica',
          height: 1.5,
          fontSize: ScreenUtil().setSp(13.0),
          color: widget.textColor ?? Colors.white),
      decoration: InputDecoration(
        hintText: widget.hint,
        suffixIcon: widget.hint == 'Enter your password' ||
                widget.hint == 'Confirm password'
            ? GestureDetector(
              onTap: () => setState((){obsecure = !obsecure;}),
              child: Icon(
                  obsecure
                      ? Icons.visibility_off_rounded
                      : Icons.visibility_rounded,
                  color: widget.borderColor),
            )
            : Container(),
        
        contentPadding: EdgeInsets.only(left: ScreenUtil().setSp(15.0),top: ScreenUtil().setHeight(15.0)),
        hintStyle: TextStyle(
            fontFamily: 'helvatica',
            height: 1.5,
            fontSize: ScreenUtil().setSp(13.0),
            color: widget.textColor ?? Colors.white),
        border: UnderlineInputBorder(
            borderSide: BorderSide(
                color: widget.borderColor,
                width: ScreenUtil().setWidth(widget.borderWidth))),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: widget.borderColor,
                width: ScreenUtil().setWidth(widget.borderWidth))),
        errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: widget.borderColor,
                width: ScreenUtil().setWidth(widget.borderWidth))),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: widget.borderColor,
                width: ScreenUtil().setWidth(widget.borderWidth))),
      ),
    );
  }
}
