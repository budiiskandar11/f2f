import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/screens/main/landingpage.dart';
import 'package:foodtofit/screens/auth/signup.dart';
import 'package:foodtofit/widgets/fields/passwordfield.dart';
import 'package:foodtofit/widgets/other/textButton.dart';
import 'package:foodtofit/widgets/fields/textfield.dart';

class SignInScr extends StatefulWidget {
  @override
  _SignInScrState createState() => _SignInScrState();
}

class _SignInScrState extends State<SignInScr> {
  TextEditingController usernameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          stops: [0.0, 0.2],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF17987D), Color(0xFF19688D)],
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
                      child: Column(
              children: [
                ClipPath(
                  clipper: LoginClipper(),
                                  child: Container(
                                    alignment: Alignment.topCenter,
                    height: ScreenUtil().setHeight(200),
                    width: ScreenUtil().screenWidth,
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(16.0)),
                    color: Colors.white,
                    child: Image.asset(
                      'assets/Food-to-Fit.111 (1)@3x.png',
                      height: ScreenUtil().setHeight(130.0),
                      width: ScreenUtil().setWidth(280.0),
                    ),
                  ),
                ),
                SizedBox(height:ScreenUtil().setHeight(40)),
                Text(
                  'Sign In',
                  style: TextStyle(
                    fontFamily: 'helvatica',
                    fontWeight: FontWeight.w700,
                    fontSize: ScreenUtil().setSp(19.0),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(ScreenUtil().setHeight(10.0)),
                ),
                Text(
                  'Lorem Ipsum is simply a dummy text for this signin screen',
                  style: TextStyle(
                    fontFamily: 'helvatica',
                    height: 1,
                    fontWeight: FontWeight.normal,
                    fontSize: ScreenUtil().setSp(11.0),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(ScreenUtil().setHeight(33.0)),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: ScreenUtil().setWidth(43.5),
                    right: ScreenUtil().setWidth(39.5),
                  ),
                  child: BorderedTextField(
                    controller: usernameCtrl,
                    hint: 'Enter your username',
                    borderColor: Colors.white,
                    inputType: TextInputType.text,
                    borderWidth: 0,
                    error: '',
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(ScreenUtil().setHeight(18.0)),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: ScreenUtil().setWidth(43.5),
                    right: ScreenUtil().setWidth(39.5),
                  ),
                  child: PasswordField(
                    controller: passwordCtrl,
                    hint: 'Enter your password',
                    borderColor: Colors.white,
                    inputType: TextInputType.text,
                    borderWidth: 0,
                    error: '',
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(ScreenUtil().setHeight(23.0)),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding:
                        EdgeInsets.only(right: ScreenUtil().setWidth(41.0)),
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                        fontFamily: 'helvatica',
                        height: 1,
                        fontWeight: FontWeight.normal,
                        fontSize: ScreenUtil().setSp(12.0),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(ScreenUtil().setHeight(30.0)),
                ),
                TempTextButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LandingPage()));},
                  text: 'Sign In',
                  textSize: 17.0,
                  height: 46.81,
                  width: 261.36,
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(ScreenUtil().setHeight(30.0)),
                ),
                Text(
                  'Sign in with',
                  style: TextStyle(
                    fontFamily: 'helvatica',
                    fontWeight: FontWeight.normal,
                    fontSize: ScreenUtil().setSp(15.0),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(35.0),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(89.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      socialLogin('iconfinder_Google_1298745@3x', () {}),
                      socialLogin('iconfinder_facebook_317746@3x', () {}),
                      socialLogin('iconfinder_1_Twitter_colored_svg_5296514@3x', () {})
                    ],
                  ),
                ),
                SizedBox(height: ScreenUtil().setHeight(34.0)),
                GestureDetector(
                  onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpScr())),
                                  child: RichText(
                    text: TextSpan(
                        text: 'Don’t have an account? ',
                        style: TextStyle(
                            letterSpacing: -0.25,
                            fontSize: ScreenUtil().setSp(13.0),
                            color: Colors.white),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: ScreenUtil().setSp(18.0),
                                color: Color(0xFF69CE39),
                              ))
                        ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path=Path();
    path..lineTo(0, size.height/2)..quadraticBezierTo(size.width/2,size.height*1.5, size.width, size.height/2)
    ..lineTo(size.width, 0)..close();
    return path;
    }
  
    @override
    bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
      return true;
  }

  
}

socialLogin(String image, VoidCallback onPress) {
  return GestureDetector(
    onTap: onPress,
    child: Container(
      height: ScreenUtil().setHeight(50.32),
      width: ScreenUtil().setHeight(50.32),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(0.4, 0.9),
                spreadRadius: 5.0,
                blurRadius: 5.0)
          ]),
      child: Center(
          child: Image.asset(
        'assets/$image.png',
        height: ScreenUtil().setHeight(22.0),
        width: ScreenUtil().setHeight(22.0),
      )),
    ),
  );
}
