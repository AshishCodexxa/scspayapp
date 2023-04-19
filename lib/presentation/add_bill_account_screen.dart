import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';



class AllBillAccounts extends StatefulWidget {
  const AllBillAccounts({Key? key}) : super(key: key);

  @override
  State<AllBillAccounts> createState() => _AllBillAccountsState();
}

class _AllBillAccountsState extends State<AllBillAccounts> {
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
            color: CommonColor.LAYOUT_BACKGROUND_COLOR,
            height: SizeConfig.safeUsedHeight * .88,
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.1),
              children: [
                getAllBillsAccounts(SizeConfig.screenHeight, SizeConfig.screenWidth)
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
            child: Text("Add Account",
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

  Widget getAllBillsAccounts(double parentHeight, double parentWidth){
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.02,
          left: parentWidth*0.03,
          right: parentWidth*0.03,),
          child: Container(
            height: parentHeight*0.18,
            decoration: BoxDecoration(
              color: CommonColor.WELCOME_TEXT_COLOR.withOpacity(0.02),
              borderRadius: BorderRadius.circular(20),

            ),
            child: Column(
              children: [

                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.07),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: parentHeight*0.015),
                        child: Text(
                          "Recharge",
                          style: TextStyle(
                              fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontFamily: 'Roboto_Regular'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: parentHeight * 0.02, left: parentWidth*0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onDoubleTap: (){},
                        onTap: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => const MobileRechargeParentScreen()));
                        },
                        child: Container(
                          height: parentHeight * 0.12,
                          width: parentWidth * 0.2,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: const [
                                  Image(
                                    image: AssetImage("assets/images/circle.png"),
                                    color: Colors.black12,),
                                  Image(
                                      image:
                                      AssetImage("assets/images/mobile.png")),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: parentHeight * 0.007),
                                child: Text(
                                  "Mobile Recharge",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: SizeConfig.blockSizeHorizontal * 3.2,
                                      fontFamily: "Roboto_Regular",
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onDoubleTap: (){},
                        onTap: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>const FasTagBankList()));
                        },
                        child: Container(
                          height: parentHeight * 0.12,
                          width: parentWidth * 0.2,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: const [
                                  Image(
                                    image: AssetImage("assets/images/circle.png"),
                                    color: Colors.black12,),
                                  Image(
                                      image:
                                      AssetImage("assets/images/electrical_bulb.png")),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: parentHeight * 0.007),
                                child: Container(
                                  color: Colors.transparent,
                                  child: Text(
                                    "FASTag Recharge",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal * 3.2,
                                        fontFamily: "Roboto_Regular",
                                        fontWeight: FontWeight.w400),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onDoubleTap: (){},
                        onTap: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>const DTHProviderScreen()));
                        },
                        child: Container(
                          height: parentHeight * 0.12,
                          width: parentWidth * 0.2,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: const [
                                  Image(
                                    image: AssetImage("assets/images/circle.png"),
                                    color: Colors.black12,),
                                  Image(
                                      image:
                                      AssetImage("assets/images/dth_icon.png")),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: parentHeight * 0.007),
                                child: Text(
                                  "DTH Recharge",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: SizeConfig.blockSizeHorizontal * 3.2,
                                      fontFamily: "Roboto_Regular",
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: parentHeight * 0.12,
                        width: parentWidth * 0.2,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: const [
                            // Stack(
                            //   alignment: Alignment.center,
                            //   children: [
                            //     Image(
                            //       image: AssetImage("assets/images/circle.png"),
                            //       color: Colors.black12,),
                            //     Image(
                            //         image:
                            //         AssetImage("assets/images/water_bill.png")),
                            //   ],
                            // ),
                            // Padding(
                            //   padding: EdgeInsets.only(top: parentHeight * 0.007),
                            //   child: Text(
                            //     "BSNL Bill",
                            //     style: TextStyle(
                            //         color: Colors.black,
                            //         fontSize: SizeConfig.blockSizeHorizontal * 3.2,
                            //         fontFamily: "Roboto_Regular",
                            //         fontWeight: FontWeight.w400),
                            //     textAlign: TextAlign.center,
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.02,
            left: parentWidth*0.03,
            right: parentWidth*0.03,),
          child: Container(
            height: parentHeight*0.18,
            decoration: BoxDecoration(
              color: CommonColor.WELCOME_TEXT_COLOR.withOpacity(0.02),
              borderRadius: BorderRadius.circular(20),

            ),
            child: Column(
              children: [

                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.07),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: parentHeight*0.015),
                        child: Text(
                          "Utilities",
                          style: TextStyle(
                              fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontFamily: 'Roboto_Regular'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: parentHeight * 0.02, left: parentWidth*0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onDoubleTap: (){},
                        onTap: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>const GasCylinderProvider()));
                        },
                        child: Container(
                          height: parentHeight * 0.12,
                          width: parentWidth * 0.2,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: const [
                                  Image(
                                    image: AssetImage("assets/images/circle.png"),
                                    color: Colors.black12,),
                                  Image(
                                      image:
                                      AssetImage("assets/images/cylinder.png")),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: parentHeight * 0.007),
                                child: Text(
                                  "Gas Cylinder Booking",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: SizeConfig.blockSizeHorizontal * 3.2,
                                      fontFamily: "Roboto_Regular",
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onDoubleTap: (){},
                        onTap: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>const ElectricityBillListScreen()));
                        },
                        child: Container(
                          height: parentHeight * 0.12,
                          width: parentWidth * 0.2,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: const [
                                  Image(
                                    image: AssetImage("assets/images/circle.png"),
                                    color: Colors.black12,),
                                  Image(
                                      image:
                                      AssetImage("assets/images/electrical_bulb.png")),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: parentHeight * 0.007),
                                child: Text(
                                  "Electricity Bills",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: SizeConfig.blockSizeHorizontal * 3.2,
                                      fontFamily: "Roboto_Regular",
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onDoubleTap: (){},
                        onTap: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>const WaterBillListScreen()));
                        },
                        child: Container(
                          height: parentHeight * 0.12,
                          width: parentWidth * 0.2,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: const [
                                  Image(
                                    image: AssetImage("assets/images/circle.png"),
                                    color: Colors.black12,),
                                  Image(
                                      image:
                                      AssetImage("assets/images/water_drop.png")),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: parentHeight * 0.007),
                                child: Text(
                                  "Water Bill",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: SizeConfig.blockSizeHorizontal * 3.2,
                                      fontFamily: "Roboto_Regular",
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onDoubleTap: (){},
                        onTap: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>const BSNLLinkAccountScreen()));
                        },
                        child: Container(
                          height: parentHeight * 0.12,
                          width: parentWidth * 0.2,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: const [
                                  Image(
                                    image: AssetImage("assets/images/circle.png"),
                                    color: Colors.black12,),
                                  Image(
                                      image:
                                      AssetImage("assets/images/water_bill.png")),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: parentHeight * 0.007),
                                child: Text(
                                  "BSNL Bill",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: SizeConfig.blockSizeHorizontal * 3.2,
                                      fontFamily: "Roboto_Regular",
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.02,
            left: parentWidth*0.03,
            right: parentWidth*0.03,),
          child: Container(
            height: parentHeight*0.18,
            decoration: BoxDecoration(
              color: CommonColor.WELCOME_TEXT_COLOR.withOpacity(0.02),
              borderRadius: BorderRadius.circular(20),

            ),
            child: Column(
              children: [

                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.07),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: parentHeight*0.015),
                        child: Text(
                          "Financial Services & Taxes",
                          style: TextStyle(
                              fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontFamily: 'Roboto_Regular'),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: parentHeight * 0.02, left: parentWidth*0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>const CreditCardScreen()));
                        },
                        onDoubleTap: (){},
                        child: Container(
                          height: parentHeight * 0.12,
                          width: parentWidth * 0.2,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: const [
                                  Image(
                                    image: AssetImage("assets/images/circle.png"),
                                    color: Colors.black12,),
                                  Image(
                                      image:
                                      AssetImage("assets/images/credit_card.png")),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: parentHeight * 0.007),
                                child: Text(
                                  "Credit Card Bill",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: SizeConfig.blockSizeHorizontal * 3.2,
                                      fontFamily: "Roboto_Regular",
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onDoubleTap: (){},
                        onTap: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>const MunicipalListScreen()));
                        },
                        child: Container(
                          height: parentHeight * 0.12,
                          width: parentWidth * 0.2,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: const [
                                  Image(
                                    image: AssetImage("assets/images/circle.png"),
                                    color: Colors.black12,),
                                  Image(
                                      image:
                                      AssetImage("assets/images/electrical_bulb.png")),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: parentHeight * 0.007),
                                child: Text(
                                  "Municipal Tax",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: SizeConfig.blockSizeHorizontal * 3.2,
                                      fontFamily: "Roboto_Regular",
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onDoubleTap: (){},
                        onTap: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>const InsuranceTaxListScreen()));
                        },
                        child: Container(
                          height: parentHeight * 0.12,
                          width: parentWidth * 0.2,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: const [
                                  Image(
                                    image: AssetImage("assets/images/circle.png"),
                                    color: Colors.black12,),
                                  Image(
                                      image:
                                      AssetImage("assets/images/insurance.png")),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: parentHeight * 0.007),
                                child: Text(
                                  "Insurance",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: SizeConfig.blockSizeHorizontal * 3.2,
                                      fontFamily: "Roboto_Regular",
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onDoubleTap: (){},
                        onTap: (){
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoanListScreen()));
                        },
                        child: Container(
                          height: parentHeight * 0.12,
                          width: parentWidth * 0.2,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: const [
                                  Image(
                                    image: AssetImage("assets/images/circle.png"),
                                    color: Colors.black12,),
                                  Image(
                                      image:
                                      AssetImage("assets/images/rupee_bag.png")),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: parentHeight * 0.007),
                                child: Text(
                                  "Loan EMI",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: SizeConfig.blockSizeHorizontal * 3.2,
                                      fontFamily: "Roboto_Regular",
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
