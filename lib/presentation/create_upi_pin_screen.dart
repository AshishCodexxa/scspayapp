import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/upi_pin_put_screen.dart';



class CreateUpiPin extends StatefulWidget {
  const CreateUpiPin({Key? key}) : super(key: key);

  @override
  State<CreateUpiPin> createState() => _CreateUpiPinState();
}

class _CreateUpiPinState extends State<CreateUpiPin> {
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
                                    "Create a UPI PIN for this Bank \nAccount",
                                    style: TextStyle(
                                        color: CommonColor.APP_NAME_COLOR,
                                        fontSize:
                                        SizeConfig.blockSizeHorizontal *
                                            6.0,
                                        fontWeight: FontWeight.w700,
                                        height: SizeConfig.screenHeight*0.0015,
                                        fontFamily: 'Roboto_Bold'),
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: SizeConfig.screenWidth * 0.03,
                                      top: SizeConfig.screenHeight * 0.01),
                                  child: Text(
                                    "Lorem Ipsum is simply dummy text of the printing.",
                                    style: TextStyle(
                                        color: CommonColor.BLACK_COLOR,
                                        fontSize:
                                        SizeConfig.blockSizeHorizontal * 3.5,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto_Regular'),
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
                    delegate: SliverChildBuilderDelegate(
                      childCount: 3,
                          (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03),
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
                                              height: SizeConfig.screenHeight * 0.1,
                                              width: SizeConfig.screenWidth * 0.1,
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
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(left: SizeConfig.screenWidth * 0.03),
                                                child: Container(
                                                  width: SizeConfig.screenWidth*0.65,
                                                  color: Colors.transparent,
                                                  child: Text(
                                                    "Axis Bank Bank Bank Bank Bank Bank Bank",
                                                    style: TextStyle(
                                                        color: CommonColor.BLACK_COLOR,
                                                        fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                                                        fontWeight: FontWeight.w500,
                                                        fontFamily: 'Roboto_Medium'),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: SizeConfig.screenWidth * 0.03),
                                                child: Text(
                                                  "Saving Account Primary",
                                                  style: TextStyle(
                                                      color: Colors.black38,
                                                      fontSize: SizeConfig.blockSizeHorizontal * 3.0,
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: 'Roboto_Regular'),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: SizeConfig.screenWidth * 0.03),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Icon(Icons.circle_outlined,
                                              color: CommonColor.APP_NAME_COLOR,),
                                            Padding(
                                              padding: EdgeInsets.only(right: SizeConfig.screenWidth*0.0024, bottom: SizeConfig.screenHeight*0.0007),
                                              child: Icon(Icons.circle,
                                                color: CommonColor.APP_NAME_COLOR,
                                                size: SizeConfig.blockSizeHorizontal*3.5,),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              /*Padding(
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
                              )*/
                            ],
                          ),
                        );
                      },
                    )),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeConfig.screenHeight * 0.05,
                          left: SizeConfig.screenWidth * 0.025,
                          right: SizeConfig.screenWidth * 0.025,
                        ),
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Padding(
                              padding: EdgeInsets.only(
                                  top: SizeConfig.screenHeight * 0.07,
                                  left: SizeConfig.screenWidth * 0.1,
                                  right: SizeConfig.screenWidth * 0.1),
                              child: GestureDetector(
                                onDoubleTap: () {},
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>UpiPinScreen()));
                                },
                                child: Container(
                                  height: SizeConfig.screenHeight * 0.055,
                                  decoration: BoxDecoration(
                                      color: CommonColor.APP_NAME_COLOR,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Create your UPI PIN",
                                        style: TextStyle(
                                            fontSize:
                                            SizeConfig.blockSizeHorizontal * 4.5,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                            fontFamily: 'Roboto_Regular'),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),


                            Padding(
                              padding: EdgeInsets.only(top: SizeConfig.screenHeight * 0.02),
                              child: Text(
                                "OR",
                                style: TextStyle(
                                    fontSize:
                                    SizeConfig.blockSizeHorizontal * 4.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    fontFamily: 'Roboto_Regular'),
                                textAlign: TextAlign.center,
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(
                                  top: SizeConfig.screenHeight * 0.02,
                                  left: SizeConfig.screenWidth * 0.1,
                                  right: SizeConfig.screenWidth * 0.1),
                              child: GestureDetector(
                                onDoubleTap: () {},
                                onTap: () {

                                },
                                child: Container(
                                  height: SizeConfig.screenHeight * 0.055,
                                  decoration: BoxDecoration(
                                      color: CommonColor.WHITE_COLOR,
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(color: CommonColor.APP_NAME_COLOR)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Use your screen lock",
                                        style: TextStyle(
                                            fontSize:
                                            SizeConfig.blockSizeHorizontal * 4.5,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                            fontFamily: 'Roboto_Regular'),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
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
