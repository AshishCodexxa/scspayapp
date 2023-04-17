import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/Municipal_Tax/municipal_tax_bill_screen.dart';
import 'package:scspay/presentation/Water_Bill/water_bill_decription_screen.dart';





class MunicipalCustomerIdScreen extends StatefulWidget {
  const MunicipalCustomerIdScreen({Key? key}) : super(key: key);

  @override
  State<MunicipalCustomerIdScreen> createState() => _MunicipalCustomerIdScreenState();
}

class _MunicipalCustomerIdScreenState extends State<MunicipalCustomerIdScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView(
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
                child: AllBookingMethod(SizeConfig.screenHeight, SizeConfig.screenWidth),
              ),
            ],

          ),
          GestureDetector(
            onDoubleTap: (){},
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MunicipalTaxBillScreen()));
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
            child: Container(
              width: parentWidth*0.75,
              child: Text("Ajmer Nagar Nigam",
                style: TextStyle(
                    fontSize: SizeConfig.blockSizeHorizontal*6.0,
                    fontFamily: "Roboto_Medium",
                    fontWeight: FontWeight.w500,
                    color: CommonColor.BLACK_COLOR
                ),overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,),
            ),
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
          padding: EdgeInsets.only(left: parentWidth*0.05, right: parentWidth*0.05, top: parentHeight*0.03),
          child: Container(
            width: SizeConfig.screenWidth*0.9,
            height: SizeConfig.screenHeight*0.14,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.05, right: parentWidth*0.05, top: parentHeight*0.03),
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: SizeConfig.screenHeight*0.012),
                      hintText: "Customer ID",
                      hintStyle: TextStyle(
                          fontSize: SizeConfig.blockSizeHorizontal*4.0,
                          fontFamily: "Roboto_Regular",
                          fontWeight: FontWeight.w400,
                          color: CommonColor.PAYMENT_SETTING_COLOR.withOpacity(0.3)
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: parentHeight * 0.02, top: parentHeight*0.011),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Please Enter your Customer ID",
                        style: TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal*3.0,
                            fontFamily: "Roboto_Regular",
                            fontWeight: FontWeight.w400,
                            color: CommonColor.BLACK_COLOR
                        ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(
              left: parentWidth*0.05,
              right: parentWidth*0.05,
              top: parentHeight*0.02
          ),
          child: Container(
            width: SizeConfig.screenWidth*0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: parentHeight*0.02,
                      left: parentWidth*0.05,
                      right: parentWidth*0.05),
                  child: Container(
                    width: parentWidth*0.68,
                    color: Colors.transparent,
                    child: RichText(
                        text: TextSpan(
                            text: "Please Note :",
                            style: TextStyle(
                                color: CommonColor.BLACK_COLOR,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto_Medium',
                                fontSize: SizeConfig.blockSizeHorizontal*2.5),
                            children: [
                              TextSpan(
                                text: " We may charge you a convenience fee based on your payment mode.",
                                style: TextStyle(
                                    color: CommonColor.BLACK_COLOR,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto_Regular',
                                    height: parentHeight*0.0015,
                                    fontSize: SizeConfig.blockSizeHorizontal*2.5),
                              )

                            ])),
                  ),
                ),
                SizedBox(
                  height: parentHeight*0.02,
                )
              ],
            ),
          ),
        )

      ],
    );
  }
}
