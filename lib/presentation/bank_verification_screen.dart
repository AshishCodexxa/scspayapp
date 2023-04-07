import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scspay/all_dialog/bank_add_success.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';




class BankVerificationScreen extends StatefulWidget {
  const BankVerificationScreen({Key? key}) : super(key: key);

  @override
  State<BankVerificationScreen> createState() => _BankVerificationScreenState();
}

class _BankVerificationScreenState extends State<BankVerificationScreen> {
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                getAllVerificationField(SizeConfig.screenHeight, SizeConfig.screenWidth)
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
          const Icon(Icons.notifications,
            color: Colors.transparent,)
        ],
      ),
    );
  }

  Widget getAllVerificationField(double parentHeight, double parentWidth){
    return Column(
      children: [

        GestureDetector(
          onTap: (){
            showCupertinoDialog(
              context: context,
              barrierDismissible: true,
              builder: (context) {
                return const AnimatedOpacity(
                    opacity: 1.0,
                    duration: Duration(seconds: 2),
                    child: BankAccountAdded());
              },
            );
          },
          onDoubleTap: (){},
          child: Container(
            color: Colors.transparent,
              child: Image(image: AssetImage("assets/images/bank_image.png"),
              )),
        ),

        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Bank Account Verification",
                style: TextStyle(
                    color: CommonColor.APP_NAME_COLOR,
                    fontSize: SizeConfig.blockSizeHorizontal * 5.0,
                    fontFamily: "Roboto_Bold",
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, left: parentWidth*0.05),
          child: Row(
            children: [

              Padding(
                padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.05),
                child: Stack(
                  children: [
                    Image(image: AssetImage("assets/images/check_circle.png"),),
                    Image(image: AssetImage("assets/images/verify_bank_check.png"),),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.05),
                child: Text(
                  "Send SMS for Verification",
                  style: TextStyle(
                      color: CommonColor.BLACK_COLOR,
                      fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                      fontFamily: "Roboto_Regular",
                      fontWeight: FontWeight.w400),
                  textScaleFactor: 1.0,
                ),
              ),

            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03),
          child: Container(
            height: SizeConfig.screenHeight*0.001,
            width: SizeConfig.screenWidth*0.9,
            color: CommonColor.PAYMENT_SETTING_COLOR.withOpacity(0.1),
            child: Text(
              "hi",
              style: TextStyle(
                  color: Colors.transparent
              ),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, left: parentWidth*0.03),
          child: Row(
            children: [

              Padding(
                padding: EdgeInsets.only(left: parentWidth*0.03),
                child: Image(image: AssetImage("assets/images/check_circle.png"),),
              ),

              Padding(
                padding: EdgeInsets.only(left: parentWidth*0.03),
                child: Container(
                  color: Colors.transparent,
                  width: SizeConfig.screenWidth*0.7,
                  child: Text(
                    "Verifying Mobile No. with your Bank Account",
                    style: TextStyle(
                        color: CommonColor.BLACK_COLOR,
                        fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                        fontFamily: "Roboto_Regular",
                        fontWeight: FontWeight.w400),
                    textScaleFactor: 1.0,
                  ),
                ),
              ),

            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03),
          child: Container(
            height: SizeConfig.screenHeight*0.001,
            width: SizeConfig.screenWidth*0.9,
            color: CommonColor.PAYMENT_SETTING_COLOR.withOpacity(0.1),
            child: Text(
              "hi",
              style: TextStyle(
                  color: Colors.transparent
              ),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, left: parentWidth*0.03),
          child: Row(
            children: [

              Padding(
                padding: EdgeInsets.only(left: parentWidth*0.03),
                child: Image(image: AssetImage("assets/images/check_circle.png"),),
              ),

              Padding(
                padding: EdgeInsets.only(left: parentWidth*0.03),
                child: Container(
                  color: Colors.transparent,
                  width: SizeConfig.screenWidth*0.7,
                  child: Text(
                    "Find Bank Account",
                    style: TextStyle(
                        color: CommonColor.BLACK_COLOR,
                        fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                        fontFamily: "Roboto_Regular",
                        fontWeight: FontWeight.w400),
                    textScaleFactor: 1.0,
                  ),
                ),
              ),

            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03),
          child: Container(
            height: SizeConfig.screenHeight*0.001,
            width: SizeConfig.screenWidth*0.9,
            color: CommonColor.PAYMENT_SETTING_COLOR.withOpacity(0.1),
            child: Text(
              "hi",
              style: TextStyle(
                  color: Colors.transparent
              ),
            ),
          ),
        ),

        SizedBox(
          height: parentHeight*0.2,
        )

      ],
    );
  }
}
