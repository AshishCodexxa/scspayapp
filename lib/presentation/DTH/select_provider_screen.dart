import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/DTH/d2h_custmerid_register.dart';
import 'package:scspay/presentation/DTH/d2h_recharge_screen.dart';



class DTHProviderScreen extends StatefulWidget {
  const DTHProviderScreen({Key? key}) : super(key: key);

  @override
  State<DTHProviderScreen> createState() => _DTHProviderScreenState();
}

class _DTHProviderScreenState extends State<DTHProviderScreen> {
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
            color: CommonColor.LAYOUT_BACKGROUND_COLOR,
            height: SizeConfig.safeUsedHeight * .88,
            child: CustomScrollView(
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03,
                        left: SizeConfig.screenWidth*0.05,
                        right: SizeConfig.screenWidth*0.05,),
                        child: GestureDetector(
                          onDoubleTap: (){},
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>D2HRechargeScreen()));
                          },
                          child: Container(
                            height: SizeConfig.screenHeight*0.15,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.02, left: SizeConfig.screenWidth*0.05),
                                  child: Text(
                                      "Recent",
                                      style: TextStyle(
                                          fontSize:
                                          SizeConfig.blockSizeHorizontal * 4.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black,
                                          fontFamily: 'Roboto_Medium')
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
                                                  "D2H",
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
                                                  "01532678375",
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
                                  padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.015,
                                  left: SizeConfig.screenWidth*0.17),
                                  child:  Text(
                                      "Rs. 235 due on 1 march 2023",
                                      style: TextStyle(
                                          fontSize:
                                          SizeConfig.blockSizeHorizontal * 3.0,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black45,
                                          fontFamily: 'Roboto_Medium')
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03,
                          left: SizeConfig.screenWidth*0.05,
                          right: SizeConfig.screenWidth*0.05,),
                        child: Container(
                          height: SizeConfig.screenHeight*0.48,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: getAllFasTagList(SizeConfig.screenHeight, SizeConfig.screenWidth)
                        ),
                      ),

                    ],
                  ),
                ),
                // SliverList(
                //     delegate: SliverChildBuilderDelegate(
                //       childCount: 3,
                //           (context, index) {
                //         return Padding(
                //           padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03),
                //           child: Column(
                //             children: [
                //               Padding(
                //                 padding: EdgeInsets.only(
                //                   left: SizeConfig.screenWidth * 0.03,
                //                   right: SizeConfig.screenWidth * 0.03,
                //                 ),
                //                 child: Container(
                //                   height: SizeConfig.screenHeight * 0.06,
                //                   decoration: BoxDecoration(
                //                     color: Colors.white,
                //                     borderRadius: BorderRadius.circular(10),
                //                   ),
                //                   child: Row(
                //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //                     children: [
                //                       Row(
                //                         children: [
                //                           Padding(
                //                             padding: EdgeInsets.only(left: SizeConfig.screenWidth * 0.02),
                //                             child: Container(
                //                               height: SizeConfig.screenHeight * 0.1,
                //                               width: SizeConfig.screenWidth * 0.1,
                //                               decoration: BoxDecoration(
                //                                 shape: BoxShape.circle,
                //                                 color: CommonColor.BANK_CARD_BACKGROUND_COLOR,
                //                               ),
                //                               child: Text(
                //                                 "Hii",
                //                                 style: TextStyle(color: Colors.transparent),
                //                               ),
                //                             ),
                //                           ),
                //                           Column(
                //                             crossAxisAlignment: CrossAxisAlignment.start,
                //                             mainAxisAlignment: MainAxisAlignment.center,
                //                             children: [
                //                               Padding(
                //                                 padding: EdgeInsets.only(left: SizeConfig.screenWidth * 0.03),
                //                                 child: Container(
                //                                   width: SizeConfig.screenWidth*0.65,
                //                                   color: Colors.transparent,
                //                                   child: Text(
                //                                     "Axis Bank Bank Bank Bank Bank Bank Bank",
                //                                     style: TextStyle(
                //                                         color: CommonColor.BLACK_COLOR,
                //                                         fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                //                                         fontWeight: FontWeight.w500,
                //                                         fontFamily: 'Roboto_Medium'),
                //                                   ),
                //                                 ),
                //                               ),
                //                               Padding(
                //                                 padding: EdgeInsets.only(left: SizeConfig.screenWidth * 0.03),
                //                                 child: Text(
                //                                   "Saving Account Primary",
                //                                   style: TextStyle(
                //                                       color: Colors.black38,
                //                                       fontSize: SizeConfig.blockSizeHorizontal * 3.0,
                //                                       fontWeight: FontWeight.w400,
                //                                       fontFamily: 'Roboto_Regular'),
                //                                 ),
                //                               ),
                //                             ],
                //                           ),
                //                         ],
                //                       ),
                //                       Padding(
                //                         padding: EdgeInsets.only(right: SizeConfig.screenWidth * 0.03),
                //                         child: Stack(
                //                           alignment: Alignment.center,
                //                           children: [
                //                             Icon(Icons.circle_outlined,
                //                               color: CommonColor.APP_NAME_COLOR,),
                //                             Padding(
                //                               padding: EdgeInsets.only(right: SizeConfig.screenWidth*0.0024, bottom: SizeConfig.screenHeight*0.0007),
                //                               child: Icon(Icons.circle,
                //                                 color: CommonColor.APP_NAME_COLOR,
                //                                 size: SizeConfig.blockSizeHorizontal*3.5,),
                //                             ),
                //                           ],
                //                         ),
                //                       )
                //                     ],
                //                   ),
                //                 ),
                //               ),
                //               /*Padding(
                //             padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.01),
                //             child: Container(
                //               height: SizeConfig.screenHeight*0.001,
                //               width: SizeConfig.screenWidth*0.9,
                //               color: CommonColor.PAYMENT_SETTING_COLOR.withOpacity(0.1),
                //               child: Text(
                //                 "hi",
                //                 style: TextStyle(
                //                     color: Colors.transparent
                //                 ),
                //               ),
                //             ),
                //           )*/
                //             ],
                //           ),
                //         );
                //       },
                //     )),
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
            child: Text("Select Provider",
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

  Widget getAllFasTagList(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(top: parentHeight*0.03,
          left: parentWidth*0.01,
          right: parentWidth*0.01),
      child: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: parentWidth*0.05
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container(
                    height: SizeConfig.screenHeight*0.035,
                    width: SizeConfig.screenWidth*0.079,
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Padding(
                        padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03,),
                        child: GestureDetector(
                          onDoubleTap: (){},
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>D2HIDVCRegisterScreen()));
                          },
                          child: Container(
                            width: SizeConfig.screenWidth*0.65,
                            color: Colors.transparent,
                            child: Text(
                                "Airtel Digital TV",
                                style: TextStyle(
                                    fontSize:
                                    SizeConfig.blockSizeHorizontal * 4.0,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    fontFamily: 'Roboto_Regular')
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),


                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: parentHeight*0.03),
              child: Container(
                height: parentWidth*0.003,
                width: parentWidth*0.9,
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
              padding: EdgeInsets.only(
                  left: parentWidth*0.05,
                top: parentHeight*0.03
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container(
                    height: SizeConfig.screenHeight*0.035,
                    width: SizeConfig.screenWidth*0.079,
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Padding(
                        padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03,),
                        child: Container(
                          width: SizeConfig.screenWidth*0.65,
                          color: Colors.transparent,
                          child: Text(
                              "Dish TV",
                              style: TextStyle(
                                  fontSize:
                                  SizeConfig.blockSizeHorizontal * 4.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
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
              padding: EdgeInsets.only(top: parentHeight*0.03),
              child: Container(
                height: parentWidth*0.003,
                width: parentWidth*0.9,
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
              padding: EdgeInsets.only(
                  left: parentWidth*0.05,
                  top: parentHeight*0.03
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container(
                    height: SizeConfig.screenHeight*0.035,
                    width: SizeConfig.screenWidth*0.079,
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Padding(
                        padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03,),
                        child: Container(
                          width: SizeConfig.screenWidth*0.65,
                          color: Colors.transparent,
                          child: Text(
                              "Sun Direct",
                              style: TextStyle(
                                  fontSize:
                                  SizeConfig.blockSizeHorizontal * 4.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
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
              padding: EdgeInsets.only(top: parentHeight*0.03),
              child: Container(
                height: parentWidth*0.003,
                width: parentWidth*0.9,
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
              padding: EdgeInsets.only(
                  left: parentWidth*0.05,
                  top: parentHeight*0.03
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container(
                    height: SizeConfig.screenHeight*0.035,
                    width: SizeConfig.screenWidth*0.079,
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Padding(
                        padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03,),
                        child: Container(
                          width: SizeConfig.screenWidth*0.65,
                          color: Colors.transparent,
                          child: Text(
                              "Tata Play (Formerly Tatasky)",
                              style: TextStyle(
                                  fontSize:
                                  SizeConfig.blockSizeHorizontal * 4.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
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
              padding: EdgeInsets.only(top: parentHeight*0.03),
              child: Container(
                height: parentWidth*0.003,
                width: parentWidth*0.9,
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
              padding: EdgeInsets.only(
                  left: parentWidth*0.05,
                  top: parentHeight*0.03
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container(
                    height: SizeConfig.screenHeight*0.035,
                    width: SizeConfig.screenWidth*0.079,
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Padding(
                        padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03,),
                        child: Container(
                          width: SizeConfig.screenWidth*0.65,
                          color: Colors.transparent,
                          child: Text(
                              "D2H",
                              style: TextStyle(
                                  fontSize:
                                  SizeConfig.blockSizeHorizontal * 4.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontFamily: 'Roboto_Regular')
                          ),
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
    );
  }
}
