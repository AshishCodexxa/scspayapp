import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/fastag_recharge_screen.dart';
import 'package:scspay/presentation/perticular_bank_fastag.dart';




class VehiclePresentScreen extends StatefulWidget {
  const VehiclePresentScreen({Key? key}) : super(key: key);

  @override
  State<VehiclePresentScreen> createState() => _VehiclePresentScreenState();
}

class _VehiclePresentScreenState extends State<VehiclePresentScreen> {
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
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.1),
                  children: [
                    getAllBillDetails(SizeConfig.screenHeight, SizeConfig.screenWidth)
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                top: SizeConfig.screenHeight * 0.1,
                bottom: SizeConfig.screenHeight * 0.07,
                left: SizeConfig.screenWidth * 0.1,
                right: SizeConfig.screenWidth * 0.1),
            child: GestureDetector(
              onDoubleTap: () {},
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SeparateBankFasTag()));
              },
              child: Container(
                height: SizeConfig.screenHeight * 0.06,
                decoration: BoxDecoration(
                    color: CommonColor.WELCOME_TEXT_COLOR,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Add New Vehicle",
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
      padding: EdgeInsets.only(top: parentHeight * 0.05,
          left: parentWidth * 0.035,
          right: parentWidth * 0.035),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onDoubleTap: () {},
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
                color: Colors.transparent,
                child: Icon(Icons.arrow_back_ios_new)),
          ),
          Padding(
            padding: EdgeInsets.only(left: parentHeight * 0.01),
            child: Text("FASTag Recharge",
              style: TextStyle(
                  fontSize: SizeConfig.blockSizeHorizontal * 6.0,
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

  Widget getAllBillDetails(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(top: parentHeight*0.03, left: parentWidth*0.05, right: parentWidth*0.05),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: EdgeInsets.only(left: parentWidth*0.05, right: parentWidth*0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.screenHeight*0.02,
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
                                "Axis Bank - Fastag",
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
                          padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03,top: parentHeight*0.005),
                          child: Container(
                            width: SizeConfig.screenWidth*0.65,
                            color: Colors.transparent,
                            child: Text(
                                "589000014758965",
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
                padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.02),
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
                padding: EdgeInsets.only(top: parentHeight*0.015, left: parentWidth*0.01),
                child: Row(
                  children: [

                    Container(
                      height: parentHeight*0.014,
                      width: parentWidth*0.03,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        shape: BoxShape.circle
                      ),
                      child: Text("H",
                      style: TextStyle(
                        color: Colors.transparent
                      ),),
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: parentWidth*0.02),
                      child: Text(
                          "Last recharge Rs. 500 on 1 Jan 2023",
                          style: TextStyle(
                              fontSize:
                              SizeConfig.blockSizeHorizontal * 2.5,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                              fontFamily: 'Roboto_Medium')
                      ),
                    ),

                  ],
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

}
