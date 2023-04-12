import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/DTH/d2h_recharge_screen.dart';




class D2HIDVCRegisterScreen extends StatefulWidget {
  const D2HIDVCRegisterScreen({Key? key}) : super(key: key);

  @override
  State<D2HIDVCRegisterScreen> createState() => _D2HIDVCRegisterScreenState();
}

class _D2HIDVCRegisterScreenState extends State<D2HIDVCRegisterScreen> {
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
                    getVehicleNumber(SizeConfig.screenHeight, SizeConfig.screenWidth),
                    getRechargeInfo(SizeConfig.screenHeight, SizeConfig.screenWidth),
                  ],
                ),
              ),
            ],
          ),
          GestureDetector(
            onDoubleTap: (){},
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>D2HRechargeScreen()));
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
            child: Text("D2H Recharge",
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
        height: SizeConfig.screenHeight*0.17,
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
                  hintText: "Customer ID/VC Number/Registered...",
                  hintStyle: TextStyle(
                      fontSize: SizeConfig.blockSizeHorizontal*3.9,
                      fontFamily: "Roboto_Regular",
                      fontWeight: FontWeight.w400,
                      color: CommonColor.PAYMENT_SETTING_COLOR.withOpacity(0.3)
                  ),
                  suffixIcon: Icon(Icons.perm_contact_cal,
                  color: CommonColor.WELCOME_TEXT_COLOR,),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: parentHeight * 0.02, top: parentHeight*0.011),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: parentWidth*0.8,
                    child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.",
                      style: TextStyle(
                          fontSize: SizeConfig.blockSizeHorizontal*2.5,
                          fontFamily: "Roboto_Regular",
                          fontWeight: FontWeight.w400,
                          color: CommonColor.BLACK_COLOR
                      ),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getRechargeInfo(double parentHeight, double parentWidth){
    return   Padding(
      padding: EdgeInsets.only(
          left: parentWidth*0.05,
        right: parentWidth*0.05,
        top: parentHeight*0.02
      ),
      child: Container(
        width: SizeConfig.screenWidth*0.9,
        height: SizeConfig.screenHeight*0.1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Padding(
              padding: EdgeInsets.only(left: parentWidth*0.04),
              child: Container(
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
                      width: SizeConfig.screenWidth*0.7,
                      color: Colors.transparent,
                      child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.",
                          style: TextStyle(
                              fontSize:
                              SizeConfig.blockSizeHorizontal * 2.2,
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
    );
  }

}
