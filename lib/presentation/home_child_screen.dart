import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/BSNL_Bill/bsnl_link_account_screen.dart';
import 'package:scspay/presentation/Credit_Card/credit_card_screen.dart';
import 'package:scspay/presentation/DTH/select_provider_screen.dart';
import 'package:scspay/presentation/ElectricityBill/electricity_bill_list_screen.dart';
import 'package:scspay/presentation/Gas_Cylinder/gas_cylinder_provider_parent_Screen.dart';
import 'package:scspay/presentation/Water_Bill/water_bill_list_screen.dart';
import 'package:scspay/presentation/fashtag_recharge_bank_list.dart';
import 'package:scspay/presentation/imps_name_account_list.dart';
import 'package:scspay/presentation/mobile_recharge_parent_screen.dart';
import 'package:scspay/presentation/neft_name_account_list.dart';
import 'package:scspay/presentation/pay_amount_notes_screen.dart';
import 'package:scspay/presentation/phone_number_list.dart';
import 'package:scspay/presentation/qr_scanning_screen.dart';
import 'package:scspay/presentation/rtgs_name_account_list.dart';

class HomeScreen extends StatefulWidget {
  final HomeScreenListener mListener;

  const HomeScreen({Key? key, required this.mListener}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isExpanded = false;
  bool click = false;

  List button = ['1', '2', '3', '4', '5', '6', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7'];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: CommonColor.LAYOUT_BACKGROUND_COLOR,
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.only(bottom: SizeConfig.screenHeight*0.1),
        children: [
          Padding(
            padding: EdgeInsets.only(top: SizeConfig.screenHeight * 0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onDoubleTap: (){},
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>TransferFromQRScan()));
                  },
                  child: Container(
                    child: Image(
                      image: AssetImage("assets/images/home_pic.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: SizeConfig.screenHeight * 0.04,
                left: SizeConfig.screenWidth * 0.1,
                right: SizeConfig.screenWidth * 0.1),
            child: GestureDetector(
              onDoubleTap: () {},
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>QRScanningScreen()));
              },
              child: Container(
                height: SizeConfig.screenHeight * 0.06,
                decoration: BoxDecoration(
                    color: CommonColor.WELCOME_TEXT_COLOR,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(right: SizeConfig.screenWidth * 0.03),
                      child: Image(
                        image: AssetImage("assets/images/scanner_img.png"),
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Scan QR Code",
                      style: TextStyle(
                          fontSize: SizeConfig.blockSizeHorizontal * 4.5,
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
          getMoneyTransferLayout(SizeConfig.screenHeight, SizeConfig.screenWidth),
          getRecentLayout(SizeConfig.screenHeight, SizeConfig.screenWidth),
          getRechargeAndBillLayout(SizeConfig.screenHeight, SizeConfig.screenWidth),
        ],
      ),
    );
  }

  Widget getMoneyTransferLayout(double parentHeight, double parentWidth) {
    return Padding(
      padding: EdgeInsets.only(
          top: parentHeight * 0.03,
          left: parentWidth * 0.05,
          right: parentWidth * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Money Transfers",
            style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.blockSizeHorizontal * 5.0,
                fontFamily: "Roboto_Regular",
                fontWeight: FontWeight.w400),
          ),
          Padding(
            padding: EdgeInsets.only(top: parentHeight * 0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onDoubleTap: (){},
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PhoneNumberScreen()));
                  },
                  child: Container(
                    height: parentHeight * 0.12,
                    width: parentWidth * 0.2,
                    decoration: BoxDecoration(
                        color: CommonColor.TRANSFER_OPTION_BACKGROUND,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: parentHeight * 0.015),
                              child: Image(
                                  image: AssetImage("assets/images/circle.png")),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: parentHeight * 0.015),
                              child: Image(
                                  image:
                                      AssetImage("assets/images/plus_icon.png")),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: parentHeight * 0.007),
                          child: Text(
                            "Pay Phone Number",
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NEFTNameAccountList()));
                  },
                  child: Container(
                    height: parentHeight * 0.12,
                    width: parentWidth * 0.2,
                    decoration: BoxDecoration(
                        color: CommonColor.TRANSFER_OPTION_BACKGROUND,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: parentHeight * 0.015),
                              child: Image(
                                  image: AssetImage("assets/images/circle.png")),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: parentHeight * 0.015),
                              child: Image(
                                  image:
                                      AssetImage("assets/images/neft_icon.png")),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: parentHeight * 0.007),
                          child: Container(
                            color: Colors.transparent,
                            child: Text(
                              "NEFT Payment",
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RTGSNameAccountList()));
                  },
                  child: Container(
                    height: parentHeight * 0.12,
                    width: parentWidth * 0.2,
                    decoration: BoxDecoration(
                        color: CommonColor.TRANSFER_OPTION_BACKGROUND,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: parentHeight * 0.015),
                              child: Image(
                                  image: AssetImage("assets/images/circle.png")),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: parentHeight * 0.015),
                              child: Image(
                                  image:
                                      AssetImage("assets/images/neft_icon.png")),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: parentHeight * 0.007),
                          child: Text(
                            "RTGS Payment",
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>IMPSNameAccountList()));
                  },
                  child: Container(
                    height: parentHeight * 0.12,
                    width: parentWidth * 0.2,
                    decoration: BoxDecoration(
                        color: CommonColor.TRANSFER_OPTION_BACKGROUND,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: parentHeight * 0.015),
                              child: Image(
                                  image: AssetImage("assets/images/circle.png")),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: parentHeight * 0.015),
                              child: Image(
                                  image:
                                      AssetImage("assets/images/imps_icon.png")),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: parentHeight * 0.007),
                          child: Text(
                            "IMPS Payment",
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
    );
  }

  Widget getRechargeAndBillLayout(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(
          top: parentHeight * 0.03,
          left: parentWidth * 0.05,
          right: parentWidth * 0.05),
      child: Column(
        children: [

          Row(
            children: [
              Text(
                "Recharge & Bills",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal * 5.0,
                    fontFamily: "Roboto_Regular",
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.02),
            child: Container(
              height: parentHeight*0.18,
              decoration: BoxDecoration(
                color: Colors.white,
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MobileRechargeParentScreen()));
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
                                  children: [
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>FasTagBankList()));
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
                                  children: [
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>DTHProviderScreen()));
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
                                  children: [
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
                            children: [
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
            padding: EdgeInsets.only(top: parentHeight*0.02),
            child: Container(
              height: parentHeight*0.18,
              decoration: BoxDecoration(
                color: Colors.white,
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>GasCylinderProvider()));
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
                                  children: [
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ElectricityBillListScreen()));
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
                                  children: [
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>WaterBillListScreen()));
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
                                  children: [
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>BSNLLinkAccountScreen()));
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
                                  children: [
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
            padding: EdgeInsets.only(top: parentHeight*0.02),
            child: Container(
              height: parentHeight*0.18,
              decoration: BoxDecoration(
                color: Colors.white,
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>CreditCardScreen()));
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
                                  children: [
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
                        Container(
                          height: parentHeight * 0.12,
                          width: parentWidth * 0.2,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
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
                        Container(
                          height: parentHeight * 0.12,
                          width: parentWidth * 0.2,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
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
                        Container(
                          height: parentHeight * 0.12,
                          width: parentWidth * 0.2,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),


          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.03),
            child: Container(
              height: parentHeight*0.07,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: parentWidth*0.05),
                        child: Image(image: AssetImage("assets/images/imps_icon.png"),
                        color: CommonColor.WELCOME_TEXT_COLOR,),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: parentWidth*0.05),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Check Balance",
                              style: TextStyle(
                                  fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                  fontFamily: 'Roboto_Regular'),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: parentWidth*0.05),
                    child: Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }


  Widget getRecentLayout(double parentHeight, double parentWidth){
    return Container(
      color: Colors.transparent,
      width: double.infinity,
      child: Column(
        children: [

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.03, left: parentWidth*0.05),
            child: Row(
              children: [
                Text(
                  "Recent",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.blockSizeHorizontal * 5.0,
                      fontFamily: "Roboto_Regular",
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: parentWidth*0.05, right: parentWidth*0.05, top: parentHeight*0.03),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: EdgeInsets.only(bottom: parentHeight*0.03),
                child: Row(
                  children: [
                    Expanded(
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: click ? button.length : 3,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                        itemBuilder: (BuildContext context, int index) {


                          int id = button.length - 1;


                          if (index == id) {
                            return GestureDetector(
                                onTap: (){
                                  click = !click;
                                  setState(() {
                                    print(click);
                                  });
                                },
                                child: Column(
                                  children: [
                                    RotatedBox(
                                        quarterTurns: click ? 2 : 0,
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Image(image: AssetImage("assets/images/welcome_img.png"),
                                              height: parentHeight*0.065,
                                              color: CommonColor.APP_NAME_COLOR,),
                                            Image(image: AssetImage("assets/images/down_arrow.png"),
                                              color: Colors.white,),
                                          ],
                                        )),
                                    Padding(
                                      padding:  EdgeInsets.only(top: parentHeight*0.005),
                                      child: Text(
                                        "Less",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                                            fontFamily: "Roboto_Regular",
                                            fontWeight: FontWeight.w400),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ],
                                ));
                          }

                          return Container(
                            width: parentWidth*0.5,
                            color: Colors.transparent,
                            child:   Column(
                              children: <Widget>[
                                Container(
                                height: parentHeight*0.061,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.transparent),
                                child:  const Image(image: AssetImage("assets/images/recent_user.png"),
                                  fit: BoxFit.fill,)
                            ),
                                Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.0),
                              child: Container(
                                color: Colors.transparent,
                                child: Text(
                                  "Roshan",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                                      fontFamily: "Roboto_Regular",
                                      fontWeight: FontWeight.w400),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                          );
                        },



                        // click ? widget._homeScopedModel.homePageModel.category.length : 4,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: parentHeight*0.04, right: parentWidth*0.05),
                      child: Visibility(
                        visible: click == false ? true : false,
                        child: GestureDetector(
                            onTap: (){
                              click = !click;
                              setState(() {});
                            },
                            child: Column(
                              children: [
                                RotatedBox(
                                    quarterTurns: click ? 2 : 0,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Image(image: AssetImage("assets/images/welcome_img.png"),
                                          height: parentHeight*0.06,
                                          color: CommonColor.APP_NAME_COLOR,),
                                        Image(image: AssetImage("assets/images/down_arrow.png"),
                                          color: Colors.white,),

                                      ],
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(top: parentHeight*0.01),
                                  child: Text("More"),
                                )
                              ],
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }


}

abstract class HomeScreenListener {}
