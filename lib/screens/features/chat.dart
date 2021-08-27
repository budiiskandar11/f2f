import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/screens/main/home.dart';
import 'package:foodtofit/screens/features/recentdata.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import '../../models/chat.dart';

class ChatScr extends StatefulWidget {
  @override
  _ChatScrState createState() => _ChatScrState();
}

class _ChatScrState extends State<ChatScr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ClipPath(
              clipper: WaveClipper(),
              child: Container(
                height: ScreenUtil().setHeight(149.51),
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(12.0)),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [Color(0xFF19688D), Color(0xFF17987D)],
                    stops: [0.55, 1.0],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: ScreenUtil().setHeight(8.5),
                    ),
                    Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            child: Icon(Icons.arrow_back_ios_rounded,
                                size: 24, color: Colors.white),
                            onTap: () => Navigator.pop(context),
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: ScreenUtil().setHeight(24.0),
                                backgroundImage:
                                    AssetImage('assets/asset-10@3x.png'),
                              ),
                              Text(
                                'Dr. Suhartini',
                                style: TextStyle(
                                    fontSize: ScreenUtil().setHeight(18.0),
                                    fontFamily: 'helvetica',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              Text(
                                '29:51',
                                style: TextStyle(
                                    fontSize: ScreenUtil().setHeight(14.0),
                                    fontFamily: 'helvetica',
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                child: ImageIcon(
                                  AssetImage(
                                      'assets/data-usage-svgrepo-com@3x.png'),
                                  color: Colors.white,
                                  size: 19.0,
                                ),
                                onTap: () => pushNewScreen(context,
                                    screen: RecentDataScr(), withNavBar: false),
                              ),
                              SizedBox(
                                height: ScreenUtil().setHeight(2.3),
                              ),
                              Text(
                                'Data',
                                style: TextStyle(
                                    fontSize: ScreenUtil().setHeight(12.0),
                                    fontFamily: 'helvetica',
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.separated(
                reverse: true,
                itemCount: messages.length,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                physics: NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: ScreenUtil().setHeight(20.0),
                  );
                },
                itemBuilder: (context, index) {
                  return messages[index].messageType == 'sender'
                      ? senderWidget(messages[index].messageContent)
                      : reciverWidget(messages[index].messageContent);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(13.0),
                  vertical: ScreenUtil().setHeight(10.0)),
              child: Row(
                children: [
                  Container(
                    height: ScreenUtil().setHeight(44.0),
                    width: ScreenUtil().setWidth(330.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: ScreenUtil().setWidth(10.0),
                        ),
                        Icon(
                          Icons.add,
                          color: Color(0xFF19688D),
                          size: 30.0,
                        ),
                        SizedBox(
                          width: ScreenUtil().setWidth(18.0),
                        ),
                        Expanded(
                          child: TextField(
                            style: TextStyle(
                                fontFamily: 'helvetica',
                                fontSize: 17,
                                fontWeight: FontWeight.normal),
                            decoration: InputDecoration.collapsed(
                                hintText: 'Type your message....'),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(6.8),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(37.0),
                    width: ScreenUtil().setWidth(37.0),
                    margin: EdgeInsets.symmetric(
                        vertical: ScreenUtil().setHeight(3.0)),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFF30A949), Color(0xFF19688D)],
                            stops: [0, 0.65])),
                    child: Center(
                      child: Image.asset(
                        'assets/send-svgrepo-com@3x.png',
                        height: ScreenUtil().setHeight(16.0),
                        width: ScreenUtil().setWidth(19.0),
                      ),
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

  List<ChatMessage> messages = [
    ChatMessage(
        messageContent: "Lorem ipsum, or lipsum as it is",
        messageType: "sender"),
    ChatMessage(messageContent: "Lorem ipsum", messageType: "receiver")
  ];
}

reciverWidget(String messege) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      CircleAvatar(
        radius: 25.0,
        backgroundImage: AssetImage('assets/woman 1 pp@3x.png'),
      ),
      SizedBox(
        width: ScreenUtil().setWidth(19.0),
      ),
      Container(
          decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: Color(0xFF6CBD45).withOpacity(0.08),
            blurRadius: 3.0,
            offset: Offset(2, 2))
      ],
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xFF6CBD45).withOpacity(0.2)),
          padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
          child: Text(
            messege,
            style: TextStyle(fontSize: 15),
          ),
        ),
      SizedBox(
      width: ScreenUtil().setWidth(21.0),
    ),
    ],
  );
}

senderWidget(String messege) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      SizedBox(
        width: ScreenUtil().setWidth(21.0),
      ),
      Container(
        constraints: BoxConstraints(maxWidth: ScreenUtil().setWidth(300)),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color(0xFF189DDB).withOpacity(0.08),
                  blurRadius: 3.0,
                  offset: Offset(2, 2))
            ],
            borderRadius: BorderRadius.circular(30.0),
            color: Color(0xFF189DDB).withOpacity(0.2)),
        padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
        child: Text(
          messege,
          overflow: TextOverflow.visible,
          style: TextStyle(fontSize: 15),
        ),
      ),
      SizedBox(
        width: ScreenUtil().setWidth(19.0),
      ),
      CircleAvatar(
        radius: 25.0,
        backgroundImage: AssetImage('assets/asset-11@3x.png'),
      )
    ],
  );
}
