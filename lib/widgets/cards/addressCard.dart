import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressCard extends StatefulWidget {
  final String name;
  final String address;
  final String addresstype;

  const AddressCard(
      {@required this.name,
      @required this.address,
      @required this.addresstype});

  @override
  _AddressCardState createState() => _AddressCardState();
}

class _AddressCardState extends State<AddressCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(138.32),
      width: double.infinity,
      padding: EdgeInsets.only(left: ScreenUtil().setWidth(20.5)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 8.0,
                    offset: Offset(5,5)
                  )
                ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: ScreenUtil().setHeight(10.1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Text(
                widget.addresstype,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(15.0),
                    color: Color(0xFF17987D),
                    fontFamily: 'helvetica'),
              ),
              Padding(
                padding: EdgeInsets.only(right: ScreenUtil().setWidth(8.0)),
                child: Icon(
                  Icons.more_vert_rounded,
                  size: 24.0,
                  color: Color(0xFF19688D),
                ),
              )
            ],
          ),
          SizedBox(
            height: ScreenUtil().setHeight(1.0),
          ),
          Text(
            widget.name,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: ScreenUtil().setSp(15.0),
                fontFamily: 'helvetica'),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(2.0),
          ),
          Text(
            widget.address,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: ScreenUtil().setSp(15.0),
                fontWeight: FontWeight.w400,
                color: Color(0xFF272727).withOpacity(0.6),
                fontFamily: 'helvetica'),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(6.8),
          ),
          Padding(
            padding: EdgeInsets.only(left: ScreenUtil().setWidth(100.2)),
            child: Container(
              width: ScreenUtil().setWidth(132.63),
                      height: ScreenUtil().setHeight(31.1),
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: StadiumBorder(),
                  side: BorderSide(color: Color(0xFF17987D))

                ),
                child: Text(
                  "Deliver here",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'helvatica',
                      height: 1.1,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF17987D),
                      fontSize: ScreenUtil().setSp(10.0)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
