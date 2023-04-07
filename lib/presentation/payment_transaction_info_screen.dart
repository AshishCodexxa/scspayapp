import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';




class PaymentTransactionInfo extends StatefulWidget {
  const PaymentTransactionInfo({Key? key}) : super(key: key);

  @override
  State<PaymentTransactionInfo> createState() => _PaymentTransactionInfoState();
}

class _PaymentTransactionInfoState extends State<PaymentTransactionInfo> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: CommonColor.APP_BAR_COLOR,
            height: SizeConfig.safeUsedHeight * .12,
            child: getTopText(SizeConfig.screenHeight, SizeConfig.screenWidth),
          ),

          Container(
              color: CommonColor.WHITE_COLOR,
              height: SizeConfig.safeUsedHeight * .88,
              child: getAddAllInfo(SizeConfig.screenHeight, SizeConfig.screenWidth)
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
          const Icon(Icons.notifications,
            color: Colors.transparent,)
        ],
      ),
    );
  }

  Widget getAddAllInfo(double parentHeight, double parentWidth){
    return Column(
      children: [

        Container(
            width: parentWidth*0.13,
            height: parentHeight*0.13,
            decoration: BoxDecoration(
                color: Colors.black12,
                shape: BoxShape.circle
            ),
            child: Image(image: AssetImage("assets/images/dummy_user.png"),
              fit: BoxFit.contain,)
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Paid to \nSangharsh Sulke",
              style:TextStyle(
                fontSize: SizeConfig.blockSizeHorizontal*4.0,
                fontFamily: 'Roboto_Regular',
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),textAlign: TextAlign.center,),
          ],
        ),

        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03),
          child: Container(
            height: parentHeight*0.05,
            width: parentWidth*0.4,
            decoration: BoxDecoration(
                color: CommonColor.APP_NAME_COLOR.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Center(
                child: Text("Rs 1,000",style: TextStyle(
                  fontSize: SizeConfig.blockSizeHorizontal*5.0,
                  fontFamily: 'Roboto_Regular',
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),)
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.02),
          child: Text("One Thousand",
            style:TextStyle(
                fontSize: SizeConfig.blockSizeHorizontal*4.0,
                fontFamily: 'Roboto_Medium',
                fontWeight: FontWeight.w500,
                color: Colors.black,
                height: parentHeight*0.0013
            ),textAlign: TextAlign.center,),
        ),

        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: parentWidth*0.03),
                child: Stack(
                  children: [
                    Image(image: AssetImage("assets/images/check_circle.png"),),
                    Image(image: AssetImage("assets/images/verify_bank_check.png"),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: parentWidth*0.02),
                child: Text("Completed 26 June, 2021",
                  style:TextStyle(
                      fontSize: SizeConfig.blockSizeHorizontal*4.0,
                      fontFamily: 'Roboto_Regular',
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      height: parentHeight*0.0013
                  ),textAlign: TextAlign.center,),
              ),
            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, left: parentWidth*0.05,
            right: parentWidth*0.05),
          child: Container(
            height: parentHeight*0.35,
            decoration: BoxDecoration(
              color: CommonColor.APP_NAME_COLOR.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.01),
                      child: Text("Axis Bank Ltd.",
                        style:TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal*3.5,
                            fontFamily: 'Roboto_Regular',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            height: parentHeight*0.0013
                        ),textAlign: TextAlign.center,),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.01),
                      child: Text("XXXXXX0253",
                        style:TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal*3.5,
                            fontFamily: 'Roboto_Regular',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            height: parentHeight*0.0013
                        ),textAlign: TextAlign.center,),
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.only(top: parentHeight*0.01),
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

                Padding(
                  padding: EdgeInsets.only(top: parentHeight*0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.01),
                        child: Text("UPI transaction ID",
                          style:TextStyle(
                              fontSize: SizeConfig.blockSizeHorizontal*3.4,
                              fontFamily: 'Roboto_Regular',
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              height: parentHeight*0.0013
                          ),textAlign: TextAlign.center,),
                      ),
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.01),
                      child: Text("563789153246",
                        style:TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal*3.4,
                            fontFamily: 'Roboto_Regular',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            height: parentHeight*0.0013
                        ),textAlign: TextAlign.center,),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: parentWidth * 0.03, top: parentHeight*0.02),
                      child: RichText(
                          text: const TextSpan(
                              text: "To:",
                              style: TextStyle(
                                  color: CommonColor.BLACK_COLOR,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto-Regular',
                                  fontSize: 14),
                              children: [
                                TextSpan(
                                    text: " SANGHARSH SULKE DEVELOPER",
                                    style: TextStyle(
                                        color: CommonColor.BLACK_COLOR,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Roboto-Regular',
                                        fontSize: 13)),
                              ])),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.01),
                      child: Text("sangharshsulke@okaxisbank",
                        style:TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal*3.2,
                            fontFamily: 'Roboto_Regular',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            height: parentHeight*0.0013
                        ),textAlign: TextAlign.center,),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: parentWidth * 0.03, top: parentHeight*0.02),
                      child: RichText(
                          text: const TextSpan(
                              text: "From:",
                              style: TextStyle(
                                  color: CommonColor.BLACK_COLOR,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto-Regular',
                                  fontSize: 14),
                              children: [
                                TextSpan(
                                    text: " BHOSALE ASHISH RAJESH",
                                    style: TextStyle(
                                        color: CommonColor.BLACK_COLOR,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Roboto-Regular',
                                        fontSize: 13)),
                              ])),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.01),
                      child: Text("bhosaleashish@okaxisbank",
                        style:TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal*3.2,
                            fontFamily: 'Roboto_Regular',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            height: parentHeight*0.0013
                        ),textAlign: TextAlign.center,),
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.only(top: parentHeight*0.01),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.01),
                        child: Text("Google transaction ID",
                          style:TextStyle(
                              fontSize: SizeConfig.blockSizeHorizontal*3.4,
                              fontFamily: 'Roboto_Regular',
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              height: parentHeight*0.0013
                          ),textAlign: TextAlign.center,),
                      ),
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.01),
                      child: Text("HAFCg0Pa3-T_JK",
                        style:TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal*3.4,
                            fontFamily: 'Roboto_Regular',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            height: parentHeight*0.0013
                        ),textAlign: TextAlign.center,),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("POWERD BY UPI",
                style:TextStyle(
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: 'Roboto_Regular',
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    height: parentHeight*0.0013
                ),textAlign: TextAlign.center,),
            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.02, right: parentWidth*0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: parentHeight*0.04,
                width: parentWidth*0.3,
                decoration: BoxDecoration(
                  color: CommonColor.WELCOME_TEXT_COLOR,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Share Receipt",
                      style:TextStyle(
                          fontSize: SizeConfig.blockSizeHorizontal*3.7,
                          fontFamily: 'Roboto_Regular',
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          height: parentHeight*0.0013
                      )),
                  ],
                ),
              ),
            ],
          ),
        )

      ],
    );
  }
}
