import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/Credit_Card/new_credit_card_add_screen.dart';




class CreditCardScreen extends StatefulWidget {
  const CreditCardScreen({Key? key}) : super(key: key);

  @override
  State<CreditCardScreen> createState() => _CreditCardScreenState();
}

class _CreditCardScreenState extends State<CreditCardScreen> {
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
                height: SizeConfig.safeUsedHeight * .75,
                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          Padding(
                            padding: EdgeInsets.only(bottom: SizeConfig.screenHeight*0.02),
                            child: getAllFields(SizeConfig.screenHeight, SizeConfig.screenWidth),
                          ),
                        ],
                      ),
                    ),
                    SliverList(
                        delegate: SliverChildBuilderDelegate(
                          childCount: 2,
                              (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03, right: SizeConfig.screenWidth*0.03),
                              child: Container(
                                // height: SizeConfig.screenHeight*0.37,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(2)
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: SizeConfig.screenWidth * 0.025, top: SizeConfig.screenHeight*0.02),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text("Your Cards",
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
                                      padding: EdgeInsets.only(
                                          top: SizeConfig.screenHeight*0.02,
                                          left: SizeConfig.screenWidth*0.06
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [

                                          Container(
                                            height: SizeConfig.screenHeight*0.038,
                                            width: SizeConfig.screenWidth*0.08,
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

                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [

                                              Padding(
                                                padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03,),
                                                child: Container(
                                                  width: SizeConfig.screenWidth*0.65,
                                                  color: Colors.transparent,
                                                  child: Text(
                                                      "ICICI Bank",
                                                      style: TextStyle(
                                                          fontSize:
                                                          SizeConfig.blockSizeHorizontal * 4.0,
                                                          fontWeight: FontWeight.w500,
                                                          color: Colors.black,
                                                          fontFamily: 'Roboto_Medium')
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03,top: SizeConfig.screenHeight*0.005),
                                                child: Container(
                                                  width: SizeConfig.screenWidth*0.65,
                                                  color: Colors.transparent,
                                                  child: Text(
                                                      "XXXX8006",
                                                      style: TextStyle(
                                                          fontSize:
                                                          SizeConfig.blockSizeHorizontal * 4.0,
                                                          fontWeight: FontWeight.w400,
                                                          color: CommonColor.PAYMENT_SETTING_COLOR.withOpacity(0.6),
                                                          fontFamily: 'Roboto_Regular')
                                                  ),
                                                ),
                                              ),


                                            ],
                                          ),



                                        ],
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: SizeConfig.screenWidth * 0.06, top: SizeConfig.screenHeight*0.02),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: SizeConfig.screenHeight*0.013,
                                            width: SizeConfig.screenWidth*0.027,
                                            decoration: BoxDecoration(
                                              color: CommonColor.APP_BAR_COLOR,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Text("hii",
                                              style: TextStyle(
                                                  color: Colors.transparent
                                              ),),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.02),
                                            child: Text("Rs 10 was paid on 03 December 2022",
                                              style: TextStyle(
                                                  fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                                  fontFamily: "Roboto_Bold",
                                                  fontWeight: FontWeight.w500,
                                                  color: CommonColor.PAYMENT_SETTING_COLOR
                                              ),),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.02,
                                          left: SizeConfig.screenWidth*0.03,
                                          right: SizeConfig.screenWidth*0.03),
                                      child: Container(
                                        height: SizeConfig.screenWidth*0.003,
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

                                    SizedBox(
                                      height: SizeConfig.screenHeight*0.02,
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        )
                    ),
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          getSecureYourCards(SizeConfig.screenHeight, SizeConfig.screenWidth)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: SizeConfig.screenHeight * 0.05,
                left: SizeConfig.screenWidth * 0.1,
                right: SizeConfig.screenWidth * 0.1),
            child: GestureDetector(
              onDoubleTap: () {},
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewCreditCard()));
              },
              child: Container(
                height: SizeConfig.screenHeight * 0.05,
                decoration: BoxDecoration(
                    color: CommonColor.WELCOME_TEXT_COLOR,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Add New",
                      style: TextStyle(
                          fontSize:
                          SizeConfig.blockSizeHorizontal * 5.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontFamily: 'Roboto_Bold'),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
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
            child: Text("Credit Card",
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

  Widget getAllFields(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(top: parentHeight*0.03, left: parentWidth*0.03, right: parentWidth*0.03),
      child: Column(
        children: [

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: parentHeight * 0.025, top: parentHeight*0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Your Cards",
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
                  padding: EdgeInsets.only(
                      top: SizeConfig.screenHeight*0.02,
                      left: SizeConfig.screenWidth*0.06
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Container(
                        height: SizeConfig.screenHeight*0.038,
                        width: SizeConfig.screenWidth*0.08,
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

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Padding(
                            padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03,),
                            child: Container(
                              width: SizeConfig.screenWidth*0.65,
                              color: Colors.transparent,
                              child: Text(
                                  "ICICI Bank",
                                  style: TextStyle(
                                      fontSize:
                                      SizeConfig.blockSizeHorizontal * 4.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontFamily: 'Roboto_Medium')
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03,top: SizeConfig.screenHeight*0.005),
                            child: Container(
                              width: SizeConfig.screenWidth*0.65,
                              color: Colors.transparent,
                              child: Text(
                                  "XXXX8006",
                                  style: TextStyle(
                                      fontSize:
                                      SizeConfig.blockSizeHorizontal * 4.0,
                                      fontWeight: FontWeight.w400,
                                      color: CommonColor.PAYMENT_SETTING_COLOR.withOpacity(0.6),
                                      fontFamily: 'Roboto_Regular')
                              ),
                            ),
                          ),


                        ],
                      ),



                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.02,
                  left: parentWidth*0.03,
                  right: parentWidth*0.03),
                  child: Container(
                    height: SizeConfig.screenWidth*0.003,
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
                  padding: EdgeInsets.only(left: parentHeight * 0.025, top: parentHeight*0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Rs 10 was paid on 03 December 2022",
                        style: TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal*3.0,
                            fontFamily: "Roboto_Bold",
                            fontWeight: FontWeight.w500,
                            color: CommonColor.PAYMENT_SETTING_COLOR
                        ),),
                    ],
                  ),
                ),

                SizedBox(
                  height: parentHeight*0.02,
                )
              ],
            ),
          ),

        ],
      ),
    );
  }

  Widget getSecureYourCards(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(top: parentHeight*0.02,
          left: parentWidth*0.03, right: parentWidth*0.03),
      child: Column(
        children: [

          Container(
            height: parentHeight*0.37,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              children: [

                Padding(
                  padding: EdgeInsets.only(left: parentHeight * 0.025, top: parentHeight*0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Secure Your Card",
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
                  padding: EdgeInsets.only(left: parentWidth*0.05,
                      right: parentWidth*0.05,
                      top: parentHeight*0.02),
                  child: Container(
                    decoration: BoxDecoration(
                        color: CommonColor.PLEASE_NOTE_COLOR,
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

                Container(
                  color: Colors.transparent,
                  height: parentHeight*0.2,
                  child: Padding(
                    padding: EdgeInsets.only(top: parentHeight*0.02),
                    child: ListView.builder(
                        itemCount: 2,
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.zero,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.only(left: parentWidth*0.03, bottom: parentHeight*0.02),
                            child: Container(
                              width: parentWidth*0.6,
                              decoration: BoxDecoration(
                                color: CommonColor.PLEASE_NOTE_COLOR,
                                borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                          );
                        }
                    ),
                  ),
                ),
              ],
            ),
          ),



        ],
      ),
    );
  }
}
