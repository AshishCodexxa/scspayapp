import 'package:flutter/material.dart';
import 'package:scspay/all_dialog/recharge_pay_dialogue.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';





class SelectRechargePlanInfo extends StatefulWidget {
  const SelectRechargePlanInfo({Key? key}) : super(key: key);

  @override
  State<SelectRechargePlanInfo> createState() => _SelectRechargePlanInfoState();
}

class _SelectRechargePlanInfoState extends State<SelectRechargePlanInfo> {
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
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.1),
                  children: [
                    getDetailsLayout(SizeConfig.screenHeight, SizeConfig.screenWidth)
                  ],
                ),
              ),

            ],
          ),
          GestureDetector(
            onDoubleTap: (){},
            onTap: (){
              showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  elevation: 10,
                  isScrollControlled: true,
                  isDismissible: true,
                  builder: (BuildContext bc) {
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                      ),
                      child: RechargePayAmountDialog(),
                    );
                  });
            },
            child: Container(
              height: SizeConfig.screenHeight*0.05,
              color: CommonColor.SIM_VERIFY_COLOR.withOpacity(0.5),
              child:  Center(
                child: Text("Proceed To Pay",
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
                child: const Icon(Icons.arrow_back_ios_new)),
          ),
          Padding(
            padding: EdgeInsets.only(left: parentHeight * 0.01),
            child: Text("Pay",
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

  Widget getDetailsLayout(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(top: parentHeight*0.03,
        left: parentWidth*0.03,
        right: parentWidth*0.03,),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: EdgeInsets.only(
              top: parentHeight*0.03,
              left: parentWidth*0.03,
              right: parentWidth*0.03
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: parentHeight*0.075,
                    width: parentWidth*0.17,
                    decoration: const BoxDecoration(
                      color: CommonColor.BANK_CARD_BACKGROUND_COLOR,
                      shape: BoxShape.circle,
                    ),
                    child: const Image(image: AssetImage("assets/images/contact_profile.png"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.01),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.transparent,
                          width: parentWidth*0.6,
                          child: Text("Nikita Mahendrakar",
                            style: TextStyle(
                                fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                fontFamily: "Roboto_Medium",
                                fontWeight: FontWeight.w500,
                                color: CommonColor.BLACK_COLOR
                            ),),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: parentHeight*0.01),
                          child:  Container(
                            color: Colors.transparent,
                            width: parentWidth*0.6,
                            child: Text("8569472634",
                              style: TextStyle(
                                  fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                  fontFamily: "Roboto_Regular",
                                  fontWeight: FontWeight.w400,
                                  color: CommonColor.BLACK_COLOR
                              ),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: parentHeight*0.02),
                child: Container(
                  height: parentWidth*0.003,
                  color: Colors.black12,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: parentHeight*0.02),
                    child: Container(
                      height: parentHeight*0.045,
                      width: parentWidth*0.42,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.black26)
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(right: parentWidth*0.05),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: parentWidth*0.3,
                              color: Colors.transparent,
                              child: Center(
                                child: Text("Vi Prepaid",
                                  style: TextStyle(
                                      fontSize: SizeConfig.blockSizeHorizontal*3.7,
                                      fontFamily: "Roboto_Regular",
                                      fontWeight: FontWeight.w400,
                                      color: CommonColor.BLACK_COLOR
                                  ),),
                              ),
                            ),

                            const Icon(Icons.arrow_drop_down_outlined)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: parentHeight*0.02),
                    child: Container(
                      height: parentHeight*0.045,
                      width: parentWidth*0.42,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.black26)
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(right: parentWidth*0.05),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: parentWidth*0.3,
                              color: Colors.transparent,
                              child: Center(
                                child: Text("Maharashtra & Goa",
                                  style: TextStyle(
                                      fontSize: SizeConfig.blockSizeHorizontal*3.3,
                                      fontFamily: "Roboto_Regular",
                                      fontWeight: FontWeight.w400,
                                      color: CommonColor.BLACK_COLOR
                                  ),),
                              ),
                            ),

                            const Icon(Icons.arrow_drop_down_outlined)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.screenHeight*0.03,),
                child: GestureDetector(
                  onDoubleTap: (){},
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SelectRechargePlanInfo()));
                  },
                  child: Container(
                      height: SizeConfig.screenHeight*0.12,
                      width: parentWidth*0.95,
                      decoration: BoxDecoration(
                        color: CommonColor.APP_BAR_COLOR,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                             /* Padding(
                                padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.045, top: SizeConfig.screenHeight*0.015),
                                child: Container(
                                  height: SizeConfig.screenHeight*0.027,
                                  width: SizeConfig.screenWidth*0.25,
                                  decoration: BoxDecoration(
                                      color: CommonColor.WELCOME_TEXT_COLOR,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Center(
                                    child: Text("Disney + Hotstar",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Roboto_Regular'
                                      ),
                                    ),
                                  ),
                                ),
                              ),*/

                              Padding(
                                padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.05,
                                    top: SizeConfig.screenHeight*0.02),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("\u{20B9} 722/-",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: SizeConfig.blockSizeHorizontal*6.0,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Roboto_Bold  '
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Padding(
                                padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.05,
                                    top: SizeConfig.screenHeight*0.012),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      color: Colors.transparent,
                                      width: SizeConfig.screenWidth*0.75,
                                      child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: SizeConfig.blockSizeHorizontal*2.2,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Roboto_Regular'
                                        ),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.045, top: SizeConfig.screenHeight*0.02,
                              right: SizeConfig.screenWidth*0.045,),
                            child: Container(
                              height: SizeConfig.screenHeight*0.027,
                              width: SizeConfig.screenWidth*0.2,
                              decoration: BoxDecoration(
                                  color: CommonColor.WELCOME_TEXT_COLOR,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(
                                child: Text("Change Plan",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: SizeConfig.blockSizeHorizontal*2.5,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Roboto_Medium'
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                  ),
                ),
              ),
              SizedBox(
                height: parentHeight*0.02,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getAllInfo(double parentHeight, double parentWidth){
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.05,
            right: SizeConfig.screenWidth*0.05,
            top: SizeConfig.screenHeight*0.03,),
          child: GestureDetector(
            onDoubleTap: (){},
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SelectRechargePlanInfo()));
            },
            child: Container(
                height: SizeConfig.screenHeight*0.14,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: SizeConfig.screenHeight*0.14,
                      decoration: const BoxDecoration(
                        color: CommonColor.WELCOME_TEXT_COLOR,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: const Text("H",
                        style: TextStyle(
                            color: Colors.transparent
                        ),),
                    ),
                    Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Padding(
                              padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.045, top: SizeConfig.screenHeight*0.015),
                              child: Container(
                                height: SizeConfig.screenHeight*0.027,
                                width: SizeConfig.screenWidth*0.25,
                                decoration: BoxDecoration(
                                    color: CommonColor.WELCOME_TEXT_COLOR,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Center(
                                  child: Text("Disney + Hotstar",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto_Regular'
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.05, top: SizeConfig.screenHeight*0.01),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("\u{20B9} 722/-",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal*6.0,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Roboto_Bold  '
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.05, top: SizeConfig.screenHeight*0.005),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    color: Colors.transparent,
                                    width: SizeConfig.screenWidth*0.8,
                                    child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: SizeConfig.blockSizeHorizontal*2.2,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Roboto_Regular'
                                      ),
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.025, right: SizeConfig.screenWidth*0.03),
                          child: const Icon(Icons.arrow_forward_ios),
                        )
                      ],
                    )
                  ],
                )
            ),
          ),
        )
      ],
    );
  }
}
