import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AcountOptionsCard extends StatefulWidget {
  final String optionText;
  final VoidCallback navigation;

  AcountOptionsCard({@required this.optionText, @required this.navigation});

  @override
  _AcountOptionsCardState createState() => _AcountOptionsCardState();
}

class _AcountOptionsCardState extends State<AcountOptionsCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.navigation,
          child: Container(
        width: double.infinity,
        height: ScreenUtil().setHeight(45.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0)
        ),
        padding: EdgeInsets.only(left:ScreenUtil().setWidth(31.5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.optionText,
              style: TextStyle(
                  color: Color(0xFF545455),
                  fontFamily: 'helvetica',
                  fontSize: ScreenUtil().setSp(15.0)),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18.0,
                color: Color(0xFF545455).withOpacity(0.7),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
