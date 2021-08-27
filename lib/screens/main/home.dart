import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/screens/features/myaccount.dart';
import 'package:foodtofit/screens/features/notification.dart';
import 'package:foodtofit/screens/order/homecheckout.dart';
import 'package:foodtofit/widgets/cards/dealCard.dart';
import 'package:foodtofit/widgets/cards/productCard.dart';
import 'package:foodtofit/widgets/cards/foodtypeCard.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import '../../models/foodtype.dart';
import '../../models/product.dart';
import '../../widgets/caloriesStatusBars/calorieStaticsHome.dart';

class HomeScr extends StatefulWidget {
  @override
  _HomeScrState createState() => _HomeScrState();
}

class _HomeScrState extends State<HomeScr> {
  TextEditingController searchCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                clipper: WaveClipper(),
                child: Container(
                  height: ScreenUtil().setHeight(300),
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(12.0)),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [Color(0xFF19688D), Color(0xFF17987D)],
                      stops: [0.75, 0.9],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: ScreenUtil().setHeight(20.5),
                      ),
                      Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                icon: ImageIcon(
                                    AssetImage(
                                        'assets/menu-svgrepo-com@3x.png'),
                                    size: 18),
                                color: Colors.white,
                                onPressed: () => pushNewScreen(context,
                                    screen: MyAccountScr(), withNavBar: false)),
                            Text(
                              'Hallo Larry',
                              style: TextStyle(
                                  fontSize: ScreenUtil().setHeight(20.0),
                                  fontFamily: 'helvetica',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                            IconButton(
                                icon: Icon(Icons.notifications,
                                    color: Colors.white),
                                onPressed: () => pushNewScreen(context,
                                    screen: NotificationScr(),
                                    withNavBar: false))
                          ],
                        ),
                      ),
                      CaloriesStatics()
                    ],
                  ),
                ),
              ),
              Container(
                  height: ScreenUtil().setHeight(38.0),
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(35.0)),
                  padding: EdgeInsets.only(
                    left: ScreenUtil().setWidth(26.0),
                    right: ScreenUtil().setWidth(15.7),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          offset: Offset(0.1, 0.1),
                          spreadRadius: 5.0,
                          blurRadius: 5.0)
                    ],
                  ),
                  child: Center(
                    child: TextFormField(
                      controller: searchCtrl,
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(15.0),
                          color: Colors.black),
                      decoration: InputDecoration(
                          hintText: 'Search',
                          suffixIcon: ImageIcon(
                            AssetImage(
                                'assets/iconfinder_-_Magnifier-Search-Zoom-_3844432@3x.png'),
                            color: Color(0xFF19688D),
                            size: 17.35,
                          ),
                          border: InputBorder.none,
                          suffixIconConstraints: BoxConstraints(
                              maxHeight: ScreenUtil().setHeight(20),
                              maxWidth: ScreenUtil().setWidth(20)),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintStyle: TextStyle(
                              fontSize: ScreenUtil().setSp(15.0),
                              color: Color(0xFF686868).withOpacity(0.2))),
                    ),
                  )),
              SizedBox(
                height: ScreenUtil().setHeight(16.0),
              ),
              Container(
                height: ScreenUtil().setHeight(50.0),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(
                      left: ScreenUtil().setWidth(12.0),
                      right: ScreenUtil().setWidth(12.0)),
                  physics: ClampingScrollPhysics(),
                  itemCount: foodType.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    width: ScreenUtil().setWidth(12.0),
                  ),
                  itemBuilder: (BuildContext context, int index) =>
                      FoodTypeCard(
                          image: foodType[index].image,
                          type: foodType[index].type),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(16.0),
              ),
              Container(
                height: ScreenUtil().setHeight(121.0),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(
                      left: ScreenUtil().setWidth(12.0),
                      right: ScreenUtil().setWidth(12.0)),
                  physics: ClampingScrollPhysics(),
                  itemCount: dealImages.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    width: ScreenUtil().setWidth(12.0),
                  ),
                  itemBuilder: (BuildContext context, int index) =>
                      DealCard(image: dealImages[index]),
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(23.0),
              ),
              ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                padding: EdgeInsets.only(
                    left: ScreenUtil().setWidth(17.5),
                    right: ScreenUtil().setWidth(11.5)),
                physics: ClampingScrollPhysics(),
                itemCount: productList.length,
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  height: ScreenUtil().setHeight(16.0),
                ),
                itemBuilder: (BuildContext context, int index) =>
                    GestureDetector(
                  onTap: () =>
                      pushNewScreen(context, screen: HomeCheckoutScr()),
                  child: ProductCard(
                    image: productList[index].image,
                    name: productList[index].name,
                    description: productList[index].description,
                    price: productList[index].price,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Product> productList = [
    Product(
        image: 'assets/chorizo-mozarella-gnocchi-bake-cropped-2@3x.png',
        name: 'Fit Pasta',
        description: 'Pizza & Pasta',
        distance: 2.0,
        price: 123,
        time: 32),
    Product(
        image: 'assets/chinese-food-4@3x.png',
        name: 'Chinease',
        description: 'Pizza & Pasta',
        distance: 2.0,
        price: 123,
        time: 32)
  ];

  List<String> dealImages = [
    'assets/asset-15@3x.png',
    'assets/38fbb71202d72589b7b0fad01851e322@3x.png',
    'assets/asset-15@3x.png',
  ];

  List<FoodType> foodType = [
    FoodType(type: 'Chinese', image: 'assets/chinese-food@3x.png'),
    FoodType(type: 'American', image: 'assets/1-carlsjr@3x.png'),
    FoodType(type: 'Italian', image: 'assets/italian-food-1024@3x.png'),
    FoodType(
        type: 'Indian',
        image:
            'assets/Thali-platter_Bawarchi-Biryani-Point-Denver-Facebook-1@3x.png'),
    FoodType(type: 'Thai', image: 'assets/a0000460_main@3x.png'),
    FoodType(type: 'Chinese', image: 'assets/chinese-food@3x.png'),
    FoodType(type: 'Italian', image: 'assets/italian-food-1024@3x.png'),
  ];
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path
      ..lineTo(0, size.height / 6 * 5)
      ..cubicTo(size.width * 0.36, size.height / 12 * 5, size.width * 0.63,
          size.height / 6 * 7, size.width, size.height / 6 * 5)
      ..lineTo(size.width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
