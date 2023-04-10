import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/pay_amount_notes_screen.dart';




class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({Key? key}) : super(key: key);

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    color: CommonColor.LAYOUT_BACKGROUND_COLOR,
                    height: SizeConfig.safeUsedHeight,
                    child: ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.1),
                      children: [

                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03,
                        right: SizeConfig.screenWidth*0.03),
                    child: Container(
                      height: SizeConfig.screenHeight*0.06,
                      decoration: BoxDecoration(
                        color: Colors.white24
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                GestureDetector(
                                  onDoubleTap: (){},
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>TransferFromQRScan()));
                                  },
                                  child: Container(
                                    height: SizeConfig.screenHeight*0.04,
                                    width: SizeConfig.screenWidth*0.2,
                                    decoration: BoxDecoration(
                                      color: CommonColor.WELCOME_TEXT_COLOR,
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Center(child: Text("Pay",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                      fontFamily: 'Roboto_Bold',
                                      fontWeight: FontWeight.w500
                                    ),)),
                                  ),
                                ),
                                Container(
                                  height: SizeConfig.screenHeight*0.04,
                                  width: SizeConfig.screenWidth*0.2,
                                  decoration: BoxDecoration(
                                    color: CommonColor.WELCOME_TEXT_COLOR,
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Center(child: Text("Request",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                    fontFamily: 'Roboto_Bold',
                                    fontWeight: FontWeight.w500
                                  ),)),
                                ),
                                Container(
                                  height: SizeConfig.screenHeight*0.04,
                                  width: SizeConfig.screenWidth*0.5,
                                  decoration: BoxDecoration(
                                    color: CommonColor.WELCOME_TEXT_COLOR.withOpacity(0.07),
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(Icons.send),
                                      suffixIconColor: Colors.black26,
                                      contentPadding: EdgeInsets.only(bottom: SizeConfig.screenHeight*0.01, left: SizeConfig.screenWidth*0.03),
                                      hintText:"Message...",
                                      hintStyle: TextStyle(
                                          color: Colors.black26,
                                          fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                          fontFamily: 'Roboto_Regular',
                                          fontWeight: FontWeight.w400
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                    maxLines: 3,
                                    minLines: 1,
                                  )
                                  // Row(
                                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //   children: [
                                  //     Padding(
                                  //       padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.05),
                                  //       child: Text("Message..",style: TextStyle(
                                  //           color: Colors.black26,
                                  //           fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                  //           fontFamily: 'Roboto_Regular',
                                  //           fontWeight: FontWeight.w400
                                  //       ),),
                                  //     ),
                                  //     Padding(
                                  //       padding: EdgeInsets.only(right: SizeConfig.screenWidth*0.05),
                                  //       child: Icon(Icons.send,
                                  //       color: Colors.black26,),
                                  //     )
                                  //   ],
                                  // ),
                                ),

                            ],
                          ),
                          /*Container(
                            color: Colors.white,
                            child: TextFormField(
                                    decoration: InputDecoration(
                                      suffixIcon: Icon(Icons.send),
                                      suffixIconColor: CommonColor.WELCOME_TEXT_COLOR,
                                      contentPadding: EdgeInsets.only(top: SizeConfig.screenHeight*0.01,
                                          left: SizeConfig.screenWidth*0.05),
                                      hintText:"Message...",
                                      hintStyle: TextStyle(
                                          color: Colors.black26,
                                          fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                          fontFamily: 'Roboto_Regular',
                                          fontWeight: FontWeight.w400
                                      ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                    maxLines: 3,
                              minLines: 1,
                              textAlign: TextAlign.justify,
                                  ),
                          ),*/
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Container(
            color: CommonColor.APP_BAR_COLOR,
            height: SizeConfig.safeUsedHeight * .15,
            child: getTopText(SizeConfig.screenHeight, SizeConfig.screenWidth),
          ),
        ],
      ),
    );
  }

  Widget getTopText(double parentHeight, double parentWidth) {
    return Padding(
      padding: EdgeInsets.only(top: parentHeight * 0.045, left: parentWidth*0.035, right: parentWidth*0.035),
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
                child: Padding(
                  padding: EdgeInsets.only(top: parentHeight*0.01),
                  child: Icon(Icons.arrow_back_ios_new),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: parentHeight * 0.01, top: parentHeight * 0.02),
            child: Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: parentHeight*0.07,
                        width: parentWidth*0.15,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                        child: Image(image: AssetImage("assets/images/contact_profile.png"),
                          fit: BoxFit.contain,),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: parentWidth*0.025,
                                right: parentWidth*0.025,
                                top: parentHeight*0.015
                            ),
                            child: Container(
                              width: parentWidth*0.55,
                              color: Colors.transparent,
                              child: Text("Nikita Mahindrakar",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto_Medium'
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: parentWidth*0.025,
                                right: parentWidth*0.025,
                                top: parentHeight*0.005
                            ),
                            child: Container(
                              width: parentWidth*0.55,
                              color: Colors.transparent,
                              child: Text("8569472634",
                                style: TextStyle(
                                    color: CommonColor.PAYMENT_SETTING_COLOR,
                                    fontSize: SizeConfig.blockSizeHorizontal*3.2,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto_Regular'
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ),
          Icon(Icons.more_vert,
            color: Colors.black,
          size: parentHeight*0.04,)
        ],
      ),
    );
  }
}
