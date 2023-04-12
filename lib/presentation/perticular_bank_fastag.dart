import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/fastag_recharge_screen.dart';



class SeparateBankFasTag extends StatefulWidget {
  const SeparateBankFasTag({Key? key}) : super(key: key);

  @override
  State<SeparateBankFasTag> createState() => _SeparateBankFasTagState();
}

class _SeparateBankFasTagState extends State<SeparateBankFasTag> {
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
                    getVehicleNumber(SizeConfig.screenHeight, SizeConfig.screenWidth)
                  ],
                ),
              ),

            ],
          ),
          GestureDetector(
            onDoubleTap: (){},
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FastagRechargeScreen()));
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
            child: Text("Axis Bank Fastag",
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


  Widget getVehicleNumber(double parentHeight, double parentWidth){
    return Padding(
      padding:  EdgeInsets.only(left: parentWidth*0.05, right: parentWidth*0.05, top: parentHeight*0.03),
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
                    hintText: "Vehicle Number",
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
                  Text("Please Enter your Vehicle Number",
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
    );
  }
}
