import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/bank_verification_screen.dart';


class BankSelectionScreen extends StatefulWidget {
  const BankSelectionScreen({Key? key}) : super(key: key);

  @override
  State<BankSelectionScreen> createState() => _BankSelectionScreenState();
}

class _BankSelectionScreenState extends State<BankSelectionScreen> {
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
            child: CustomScrollView(
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeConfig.screenHeight * 0.03,
                          left: SizeConfig.screenWidth * 0.025,
                          right: SizeConfig.screenWidth * 0.025,
                        ),
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: SizeConfig.screenWidth * 0.03,
                                      top: SizeConfig.screenHeight * 0.01),
                                  child: Text(
                                    "Select your Bank Linked with \n8956475265",
                                    style: TextStyle(
                                        color: CommonColor.BLACK_COLOR,
                                        fontSize:
                                        SizeConfig.blockSizeHorizontal *
                                            5.0,
                                        fontWeight: FontWeight.w500,
                                        height: SizeConfig.screenHeight*0.0015,
                                        fontFamily: 'Roboto_Medium'),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: SizeConfig.screenHeight*0.03, left: SizeConfig.screenWidth*0.1,
                                      right: SizeConfig.screenWidth*0.1
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onDoubleTap: (){},
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>BankVerificationScreen()));
                                        },
                                        child: Container(
                                          height: SizeConfig.screenHeight*0.11,
                                          width: SizeConfig.screenWidth*0.3,
                                          decoration: BoxDecoration(
                                              color: CommonColor.BANK_CARD_BACKGROUND_COLOR.withOpacity(0.2),
                                              borderRadius: BorderRadius.circular(15)
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  height: SizeConfig.screenHeight*0.06,
                                                  decoration: BoxDecoration(
                                                      color: CommonColor.BANK_CARD_BACKGROUND_COLOR,
                                                      shape: BoxShape.circle
                                                  ),
                                                  child: Image(image: AssetImage("assets/images/dummy_user.png"),
                                                    fit: BoxFit.cover,)
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.01),
                                                child: Text("Axis Bank",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                                      fontWeight: FontWeight.w500,
                                                      fontFamily: 'Roboto_Bold'
                                                  ),),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: SizeConfig.screenHeight*0.11,
                                        width: SizeConfig.screenWidth*0.3,
                                        decoration: BoxDecoration(
                                            color: CommonColor.BANK_CARD_BACKGROUND_COLOR.withOpacity(0.2),
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: SizeConfig.screenHeight*0.06,
                                              decoration: BoxDecoration(
                                                color: CommonColor.BANK_CARD_BACKGROUND_COLOR,
                                                shape: BoxShape.circle
                                              ),
                                              child: Image(image: AssetImage("assets/images/dummy_user.png"),
                                              fit: BoxFit.cover,)
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.01),
                                              child: Text("HDFC Bank",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'Roboto_Bold'
                                                ),),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: SizeConfig.screenHeight*0.03, left: SizeConfig.screenWidth*0.1,
                                      right: SizeConfig.screenWidth*0.1
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: SizeConfig.screenHeight*0.11,
                                        width: SizeConfig.screenWidth*0.3,
                                        decoration: BoxDecoration(
                                            color: CommonColor.BANK_CARD_BACKGROUND_COLOR.withOpacity(0.2),
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                                height: SizeConfig.screenHeight*0.06,
                                                decoration: BoxDecoration(
                                                    color: CommonColor.BANK_CARD_BACKGROUND_COLOR,
                                                    shape: BoxShape.circle
                                                ),
                                                child: Image(image: AssetImage("assets/images/dummy_user.png"),
                                                  fit: BoxFit.cover,)
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.01),
                                              child: Text("ICICI Bank",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'Roboto_Bold'
                                                ),),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: SizeConfig.screenHeight*0.11,
                                        width: SizeConfig.screenWidth*0.3,
                                        decoration: BoxDecoration(
                                            color: CommonColor.BANK_CARD_BACKGROUND_COLOR.withOpacity(0.2),
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: SizeConfig.screenHeight*0.06,
                                              decoration: BoxDecoration(
                                                color: CommonColor.BANK_CARD_BACKGROUND_COLOR,
                                                shape: BoxShape.circle
                                              ),
                                              child: Image(image: AssetImage("assets/images/dummy_user.png"),
                                              fit: BoxFit.cover,)
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.01),
                                              child: Text("State Bank",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'Roboto_Bold'
                                                ),),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeConfig.screenHeight * 0.03,
                          left: SizeConfig.screenWidth * 0.025,
                          right: SizeConfig.screenWidth * 0.025,
                        ),
                        child: Container(
                          height: SizeConfig.screenHeight * 0.06,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: CommonColor.ALL_BANK_COLOR,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: SizeConfig.screenWidth * 0.05,
                                    top: SizeConfig.screenHeight * 0.005),
                                child: Text(
                                  "All Banks",
                                  style: TextStyle(
                                      color: CommonColor.WHITE_COLOR,
                                      fontSize:
                                      SizeConfig.blockSizeHorizontal *
                                          5.0,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Roboto_Medium'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SliverList(
                    delegate: SliverChildBuilderDelegate(
                      childCount: 10,
                          (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.01),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: SizeConfig.screenWidth * 0.03,
                                  right: SizeConfig.screenWidth * 0.03,
                                ),
                                child: Container(
                                  height: SizeConfig.screenHeight * 0.06,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: SizeConfig.screenWidth * 0.02),
                                            child: Container(
                                              height: SizeConfig.screenHeight * 0.07,
                                              width: SizeConfig.screenWidth * 0.07,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: CommonColor.BANK_CARD_BACKGROUND_COLOR,
                                              ),
                                              child: Text(
                                                "Hii",
                                                style: TextStyle(color: Colors.transparent),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: SizeConfig.screenWidth * 0.03),
                                            child: Text(
                                              "Future Bank",
                                              style: TextStyle(
                                                  color: CommonColor.BLACK_COLOR,
                                                  fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'Roboto_Medium'),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: SizeConfig.screenWidth * 0.03),
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          size: SizeConfig.screenHeight * 0.02,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.01),
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
                              )
                            ],
                          ),
                        );
                      },
                    )),
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


}
