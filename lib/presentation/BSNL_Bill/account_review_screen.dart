import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/BSNL_Bill/bsnl_bill_screen.dart';





class AccountReviewScreen extends StatefulWidget {
  const AccountReviewScreen({Key? key}) : super(key: key);

  @override
  State<AccountReviewScreen> createState() => _AccountReviewScreenState();
}

class _AccountReviewScreenState extends State<AccountReviewScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Container(
                color: CommonColor.APP_BAR_COLOR,
                height: SizeConfig.safeUsedHeight * .12,
                child: getTopText(SizeConfig.screenHeight, SizeConfig.screenWidth),
              ),

              Container(
                color: CommonColor.LAYOUT_BACKGROUND_COLOR,
                height: SizeConfig.safeUsedHeight * .88,
                child: AllBookingMethod(SizeConfig.screenHeight, SizeConfig.screenWidth),
              ),
            ],

          ),
          GestureDetector(
            onDoubleTap: (){},
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>BSNLBillScreen()));
            },
            child: Container(
              height: SizeConfig.screenHeight*0.05,
              color: CommonColor.SIM_VERIFY_COLOR.withOpacity(0.5),
              child:  Center(
                child: Text("Confirm",
                  style: TextStyle(
                      fontSize: SizeConfig.blockSizeHorizontal*5.0,
                      fontFamily: "Roboto_Medium",
                      fontWeight: FontWeight.w500,
                      color: CommonColor.WHITE_COLOR
                  ),),
              ),
            ),
          )
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
            child: Text("BSNL Landline",
                style: TextStyle(
                    fontSize: SizeConfig.blockSizeHorizontal*6.0,
                    fontFamily: "Roboto_Medium",
                    fontWeight: FontWeight.w500,
                    color: CommonColor.BLACK_COLOR
                )),
          ),
          const Icon(Icons.notifications,
            color: Colors.transparent,)
        ],
      ),
    );
  }


  Widget AllBookingMethod(double parentHeight, double parentWidth){
    return Column(
      children: [

        Padding(
          padding:  EdgeInsets.only(left: parentWidth*0.05, right: parentWidth*0.05, top: parentHeight*0.03),
          child: Container(
            width: SizeConfig.screenWidth*0.9,
            height: SizeConfig.screenHeight*0.23,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [

                Padding(
                  padding: EdgeInsets.only(left: parentHeight * 0.025, top: parentHeight*0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Review Account Information",
                        style: TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal*4.0,
                            fontFamily: "Roboto_Bold",
                            fontWeight: FontWeight.w500,
                            color: Colors.black
                        ),),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: parentHeight*0.02, left: parentWidth*0.05),
                  child: Container(
                    color: Colors.transparent,
                    width: parentWidth*0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(
                          width: parentWidth*0.4,
                          color: Colors.transparent,
                          child: Text(
                              "Account Holder Name",
                              style: TextStyle(
                                  fontSize:
                                  SizeConfig.blockSizeHorizontal * 4.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black26,
                                  fontFamily: 'Roboto_Medium')
                          ),
                        ),

                        Container(
                          color: Colors.transparent,
                          width: parentWidth*0.42,
                          child: Text(
                              ": Sarthak Pratap Jadhav",
                              style: TextStyle(
                                  fontSize:
                                  SizeConfig.blockSizeHorizontal * 3.5,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black26,
                                  fontFamily: 'Roboto_Regular')
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: parentHeight*0.02, left: parentWidth*0.05),
                  child: Container(
                    color: Colors.transparent,
                    width: parentWidth*0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(
                          width: parentWidth*0.4,
                          color: Colors.transparent,
                          child: Text(
                              "Number With STD Code (without 0)",
                              style: TextStyle(
                                  fontSize:
                                  SizeConfig.blockSizeHorizontal * 4.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black26,
                                  fontFamily: 'Roboto_Medium')
                          ),
                        ),

                        Container(
                          color: Colors.transparent,
                          width: parentWidth*0.42,
                          child: Text(
                              ": 658932458945",
                              style: TextStyle(
                                  fontSize:
                                  SizeConfig.blockSizeHorizontal * 3.5,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black26,
                                  fontFamily: 'Roboto_Regular')
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: parentHeight*0.02, left: parentWidth*0.05),
                  child: Container(
                    color: Colors.transparent,
                    width: parentWidth*0.9,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(
                          width: parentWidth*0.4,
                          color: Colors.transparent,
                          child: Text(
                              "Account Name",
                              style: TextStyle(
                                  fontSize:
                                  SizeConfig.blockSizeHorizontal * 4.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black26,
                                  fontFamily: 'Roboto_Medium')
                          ),
                        ),

                        Container(
                          color: Colors.transparent,
                          width: parentWidth*0.42,
                          child: Text(
                              ": BSNL Landline - Individual0330",
                              style: TextStyle(
                                  fontSize:
                                  SizeConfig.blockSizeHorizontal * 3.5,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black26,
                                  fontFamily: 'Roboto_Regular')
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(left: parentWidth*0.05,
              right: parentWidth*0.05,
              top: parentHeight*0.03),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7)
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: parentHeight*0.02,
                      left: parentWidth*0.05,
                      right: parentWidth*0.05),
                  child: RichText(
                      text: TextSpan(
                          text: "Please Note :",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto_Medium',
                              fontSize: SizeConfig.blockSizeHorizontal*2.3),
                          children: [
                            TextSpan(
                              text: " Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.",
                              style: TextStyle(
                                  color: CommonColor.BLACK_COLOR,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto-Regular',
                                  height: parentHeight*0.0015,
                                  fontSize: SizeConfig.blockSizeHorizontal*2.0),
                            )
                          ])),
                ),
                SizedBox(
                  height: parentHeight*0.02,
                )
              ],
            ),
          ),
        ),

      ],
    );
  }

}
