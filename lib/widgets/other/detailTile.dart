import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailTile extends StatefulWidget {
  final String label,detail;

  const DetailTile({@required this.label, @required this.detail});

  @override
  _DetailTileState createState() => _DetailTileState();
}

class _DetailTileState extends State<DetailTile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(widget.label,style: TextStyle(
                  fontFamily: 'helvetica',
                  height: 1,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF17987D),
                  fontSize: ScreenUtil().setSp(13.0))),
        Text(widget.detail,style: TextStyle(
                  fontFamily: 'helvetica',
                  height: 1,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF545455),
                  fontSize: ScreenUtil().setSp(15.0))),
      ],
    );
  }
}