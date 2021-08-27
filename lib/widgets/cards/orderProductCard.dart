import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/widgets/other/dailogBox.dart';

// ignore: must_be_immutable
class OrderProductCard extends StatefulWidget {
  final String name;
  final String description;
  final String image;
  final int price;
  int quantity;

  OrderProductCard(
      {@required this.name,
      @required this.description,
      @required this.image,
      @required this.price,
      @required this.quantity});

  @override
  _OrderProductCardState createState() => _OrderProductCardState();
}

class _OrderProductCardState extends State<OrderProductCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Container(
        height: ScreenUtil().setHeight(84.95),
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(12.5)),
        padding: EdgeInsets.only(
          left: ScreenUtil().setWidth(4.0),
          top: ScreenUtil().setWidth(4.0),
          bottom: ScreenUtil().setWidth(4.0),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
                blurRadius: 8,
                color: Colors.grey.withOpacity(0.16),
                offset: Offset(2, 2))
          ],
        ),
        child: Row(
          children: [
            Container(
              height: ScreenUtil().setHeight(78.95),
              width: ScreenUtil().setWidth(99.0),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.fill)),
              child: Stack(
                children: [
                  Positioned(
                    top: ScreenUtil().setHeight(8.0),
                    right: ScreenUtil().setWidth(4.3),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 16.4,
                    ),
                  ),
                  StatefulBuilder(builder: (_, state) {
                    return Positioned(
                      bottom: ScreenUtil().setHeight(3.6),
                      right: ScreenUtil().setWidth(4.5),
                      child: Container(
                        height: ScreenUtil().setHeight(26.0),
                        width: ScreenUtil().setWidth(90.0),
                        padding: EdgeInsets.symmetric(
                            horizontal: ScreenUtil().setWidth(2.0)),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.95),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () => state((){
                                if( widget.quantity > 0 ) widget.quantity--;
                              }),
                                                          child: Container(
                                height: ScreenUtil().setHeight(20.0),
                                width: ScreenUtil().setWidth(20.0),
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.green)),
                                child: Center(
                                  child: Icon(
                                    Icons.remove,
                                    size: 14.0,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              widget.quantity.toString(),
                              style: TextStyle(
                                  fontFamily: 'helvetica',
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF434544),
                                  fontSize: ScreenUtil().setSp(18.0)),
                            ),
                            GestureDetector(
                              onTap: () => state((){
                                widget.quantity++;
                              }),
                              child: Container(
                                height: ScreenUtil().setHeight(20.0),
                                width: ScreenUtil().setWidth(20.0),
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.green)),
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    size: 14.0,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  })
                ],
              ),
            ),
            SizedBox(
              width: ScreenUtil().setWidth(13.5),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: ScreenUtil().setHeight(7.0),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(right: ScreenUtil().setWidth(21.1)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.name,
                            style: TextStyle(
                                fontFamily: 'helvetica',
                                fontWeight: FontWeight.bold,
                                fontSize: ScreenUtil().setSp(17.0))),
                        GestureDetector(
                          onTap: () => {},
                          child: Container(
                            width: ScreenUtil().setWidth(65.0),
                            height: ScreenUtil().setHeight(24.62),
                            decoration: BoxDecoration(
                              color: Color(0xFF6CBD45),
                              borderRadius: BorderRadius.circular(30.0),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 3,
                                    color: Colors.black.withOpacity(0.16),
                                    offset: Offset(1, 2))
                              ],
                            ),
                            child: Center(
                              child: Text('Promo',
                                  style: TextStyle(
                                      fontFamily: 'helvetica',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(12.0))),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(1.1),
                  ),
                  Text('\$${widget.price}',
                      style: TextStyle(
                          fontFamily: 'helvetica',
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF19688D),
                          fontSize: ScreenUtil().setSp(12.0))),
                  Padding(
                    padding:
                        EdgeInsets.only(right: ScreenUtil().setWidth(16.1)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('400 Cal',
                            style: TextStyle(
                                fontFamily: 'helvetica',
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF686868),
                                fontSize: ScreenUtil().setSp(15.0))),
                        GestureDetector(
                          onTap: () => showNutritionDailog(),
                          child: Container(
                            width: ScreenUtil().setWidth(76.0),
                            height: ScreenUtil().setHeight(24.62),
                            margin: EdgeInsets.only(
                                left: ScreenUtil().setWidth(13.6)),
                            decoration: BoxDecoration(
                                color: Color(0xFF19688D),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 3,
                                      color: Colors.black.withOpacity(0.16),
                                      offset: Offset(1, 2))
                                ],
                                borderRadius: BorderRadius.circular(30.0)),
                            child: Center(
                              child: Text('Nutrition',
                                  style: TextStyle(
                                      fontFamily: 'helvetica',
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(11.5))),
                            ),
                          ),
                        ),
                        Container(
                          width: ScreenUtil().setWidth(76.0),
                          height: ScreenUtil().setHeight(24.62),
                          padding:
                              EdgeInsets.only(left: ScreenUtil().setWidth(4.5)),
                          decoration: BoxDecoration(
                            color: Color(0xFF17987D),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ImageIcon(
                                AssetImage('assets/notes-svgrepo-com-5@3x.png'),
                                color: Colors.white,
                                size: 14.5,
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(4.5),
                              ),
                              Text('Notes',
                                  style: TextStyle(
                                      fontFamily: 'helvetica',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontSize: ScreenUtil().setSp(12.0))),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  showNutritionDailog() {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.transparent.withOpacity(0.3),
      transitionDuration: Duration(milliseconds: 500),
      context: context,
      pageBuilder: (_, __, ___) {
        return nutritionDialog(context);
      },
    );
  }
}
