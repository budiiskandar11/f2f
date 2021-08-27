import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/screens/auth/signin.dart';
import 'package:foodtofit/screens/auth/otpdailog.dart';
import 'package:foodtofit/widgets/fields/passwordfield.dart';
import 'package:foodtofit/widgets/other/textButton.dart';
import 'package:foodtofit/widgets/fields/textfield.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignUpScr extends StatefulWidget {
  @override
  _SignUpScrState createState() => _SignUpScrState();
}

class _SignUpScrState extends State<SignUpScr> {
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController phonenoCtrl = TextEditingController();
  TextEditingController countrycodeCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController confpasswordCtrl = TextEditingController();

  ImagePicker picker = ImagePicker();
  File imgfile;
  bool loading = false;
  bool succes = false;

  Future getImageG() async {
    PickedFile pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        imgfile = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future getImageC() async {
    PickedFile pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        imgfile = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          stops: [0.0, 0.35],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF17987D).withOpacity(0.6), Color(0xFF19688D)],
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            padding:
                EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(39.5)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: ScreenUtil().setHeight(ScreenUtil().setHeight(91.0)),
                ),
                Text(
                  'Sign Up',
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
                Row(
                  children: [
                    imgfile == null
                        ? Container(
                            height: ScreenUtil().setHeight(82.0),
                            width: ScreenUtil().setWidth(82.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Center(
                              child: Image.asset(
                                'assets/asset-1@3x.png',
                                height: ScreenUtil().setHeight(42.37),
                                width: ScreenUtil().setWidth(31.28),
                              ),
                            ),
                          )
                        : CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: ScreenUtil().setHeight(41.0),
                            backgroundImage: FileImage(imgfile)),
                    SizedBox(
                      width: ScreenUtil().setWidth(12.0),
                    ),
                    Container(
                      height: ScreenUtil().setHeight(51.88),
                      width: ScreenUtil().setWidth(135.14),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () => getImageC(),
                            child: Row(children: [
                              Container(
                                height: ScreenUtil().setHeight(21.0),
                                width: ScreenUtil().setWidth(21.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(17.9),
                              ),
                              Text(
                                'Take a picture',
                                style: TextStyle(
                                  fontFamily: 'helvatica',
                                  height: 1,
                                  fontWeight: FontWeight.bold,
                                  fontSize: ScreenUtil().setSp(10.0),
                                  color: Colors.white,
                                ),
                              )
                            ]),
                          ),
                          GestureDetector(
                            onTap: () => getImageG(),
                            child: Row(children: [
                              Container(
                                height: ScreenUtil().setHeight(21.0),
                                width: ScreenUtil().setWidth(21.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(17.9),
                              ),
                              Text(
                                'Select from gallery',
                                style: TextStyle(
                                  fontFamily: 'helvatica',
                                  height: 1,
                                  fontWeight: FontWeight.bold,
                                  fontSize: ScreenUtil().setSp(10.0),
                                  color: Colors.white,
                                ),
                              )
                            ]),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(ScreenUtil().setHeight(20.0)),
                ),
                Padding(
                  padding: EdgeInsets.only(right: ScreenUtil().setWidth(4)),
                  child: BorderedTextField(
                    controller: nameCtrl,
                    hint: 'Enter your name',
                    borderColor: Colors.white,
                    inputType: TextInputType.text,
                    borderWidth: 0,
                    error: '',
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(ScreenUtil().setHeight(20.0)),
                ),
                Padding(
                  padding: EdgeInsets.only(right: ScreenUtil().setWidth(4)),
                  child: BorderedTextField(
                    controller: emailCtrl,
                    hint: 'Enter your email',
                    borderColor: Colors.white,
                    inputType: TextInputType.emailAddress,
                    borderWidth: 0,
                    error: '',
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(ScreenUtil().setHeight(30.0)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: ScreenUtil().setWidth(16.0)),
                  child: Text(
                    'Phone number',
                    style: TextStyle(
                      fontFamily: 'helvatica',
                      height: 1,
                      fontWeight: FontWeight.normal,
                      fontSize: ScreenUtil().setSp(13.0),
                      color: Colors.white,
                    ),
                  ),
                ),
                InternationalPhoneNumberInput(
                    inputBorder: InputBorder.none,
                    inputDecoration: InputDecoration(
                      hintText: '',
                      border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white))
                    ),
                    textStyle: TextStyle(
                      color: Colors.white
                    ),
                    selectorConfig: SelectorConfig(
                      selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      leadingPadding: ScreenUtil().setWidth(16)
                    ),
                    selectorTextStyle: TextStyle(color: Colors.white),
                    textFieldController: phonenoCtrl,
                    onInputValidated: (valid) {
                      
                    },
                    onInputChanged: (number) {
          
                    },
                  ),
                  SizedBox(
                  height: ScreenUtil().setHeight(ScreenUtil().setHeight(20.0)),
                ),
                Padding(
                  padding: EdgeInsets.only(right: ScreenUtil().setWidth(4)),
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
                  height: ScreenUtil().setHeight(ScreenUtil().setHeight(20.0)),
                ),
                Padding(
                  padding: EdgeInsets.only(right: ScreenUtil().setWidth(4)),
                  child: PasswordField(
                    controller: confpasswordCtrl,
                    hint: 'Confirm password',
                    borderColor: Colors.white,
                    inputType: TextInputType.text,
                    borderWidth: 0,
                    error: '',
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(ScreenUtil().setHeight(55.0)),
                ),
                Center(
                  child: TempTextButton(
                    onPressed: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          opaque: false,
                          pageBuilder: (BuildContext context, _, __) =>
                              OTPDailog()));
                    },
                    text: 'Sign Up',
                    textSize: 17.0,
                    height: 46.81,
                    width: 261.36,
                  ),
                ),
                SizedBox(height: ScreenUtil().setHeight(25.2)),
                Center(
                  child: GestureDetector(
                    onTap: () => Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SignInScr())),
                    child: RichText(
                      text: TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(
                              letterSpacing: -0.25,
                              fontSize: ScreenUtil().setSp(13.0),
                              color: Colors.white),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Sign In',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: ScreenUtil().setSp(18.0),
                                  color: Color(0xFF69CE39),
                                ))
                          ]),
                    ),
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
