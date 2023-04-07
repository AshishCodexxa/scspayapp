import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';




class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          Container(
            color: CommonColor.APP_BAR_COLOR,
            height: SizeConfig.safeUsedHeight * .12,
            child: getTopText(SizeConfig.screenHeight, SizeConfig.screenWidth),
          ),

          Container(
            color: CommonColor.WHITE_COLOR,
            height: SizeConfig.safeUsedHeight * .88,
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.1),
              children: [
                getAllNotification(SizeConfig.screenHeight, SizeConfig.screenWidth)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getTopText(double parentHeight, double parentWidth) {
    return Padding(
      padding: EdgeInsets.only(top: parentHeight * 0.05, left: parentWidth*0.035, right: parentWidth*0.035),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onDoubleTap: (){},
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
                color: Colors.transparent,
                child: Icon(Icons.arrow_back_ios_new)),
          ),
          Padding(
            padding: EdgeInsets.only(left: parentHeight * 0.01),
            child: Text("Notification",
              style: TextStyle(
                  fontSize: SizeConfig.blockSizeHorizontal*6.0,
                  fontFamily: "Roboto_Medium",
                  fontWeight: FontWeight.w500,
                  color: CommonColor.BLACK_COLOR
              ),),
          ),
          const Icon(Icons.notifications,
            color: Colors.transparent,)
        ],
      ),
    );
  }

  Widget getAllNotification(double parentHeight, double parentWidth){
    return Container(
      height: SizeConfig.safeUsedHeight * .88,
      child: ListView.builder(
          itemCount: 2,
          padding: EdgeInsets.zero,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(top: parentHeight*0.025),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [

                      Padding(
                        padding: EdgeInsets.only(left: parentWidth*0.09, ),
                        child: Container(
                          height: parentHeight*0.035,
                          width: parentWidth*0.075,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(color: Colors.black)
                          ),
                          child: Text("hii",
                          style: TextStyle(
                            color: Colors.transparent
                          ),),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: parentWidth*0.04),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Container(
                              width: parentWidth*0.65,
                              color: Colors.transparent,
                              child: Text(
                                "HDFC Bank FASTag",
                                style: TextStyle(
                                    fontSize:
                                    SizeConfig.blockSizeHorizontal * 4.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    fontFamily: 'Roboto_Regular')
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.007),
                              child: Container(
                                width: parentWidth*0.65,
                                color: Colors.transparent,
                                child: Text(
                                  "589000014758965",
                                  style: TextStyle(
                                      fontSize:
                                      SizeConfig.blockSizeHorizontal * 4.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontFamily: 'Roboto_Regular'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: parentWidth*0.03),
                        child: Icon(Icons.delete),
                      ),

                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: parentWidth*0.05,
                        right: parentWidth*0.05, top: parentHeight*0.03),
                    child: Container(
                      height: parentWidth*0.003,
                      color: CommonColor.TRANSFER_OPTION_BACKGROUND,
                      child: Row(
                        children: const [
                          Text("hii",
                            style: TextStyle(
                                color: Colors.transparent
                            ),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
      ),
    );
  }
}
