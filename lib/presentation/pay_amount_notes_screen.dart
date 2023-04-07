import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/enter_upi_pin_screen.dart';




class TransferFromQRScan extends StatefulWidget {
  const TransferFromQRScan({Key? key}) : super(key: key);

  @override
  State<TransferFromQRScan> createState() => _TransferFromQRScanState();
}

class _TransferFromQRScanState extends State<TransferFromQRScan> {
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
            color: CommonColor.WHITE_COLOR,
            height: SizeConfig.safeUsedHeight * .88,
            child: getAllLayout(SizeConfig.screenHeight, SizeConfig.screenWidth),
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
            child: Text("Notification",
              style: TextStyle(
                  fontSize: SizeConfig.blockSizeHorizontal*6.0,
                  fontFamily: "Roboto_Medium",
                  fontWeight: FontWeight.w500,
                  color: Colors.transparent
              ),),
          ),
          const Icon(Icons.notifications,
            color: Colors.transparent,)
        ],
      ),
    );
  }

  Widget getAllLayout(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(top: parentHeight*0.15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
            color: Colors.transparent,
            width: parentWidth*0.45,
            height: parentHeight*0.07,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  width: parentWidth*0.13,
                  height: parentHeight*0.13,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    shape: BoxShape.circle
                  ),
                  child: Image(image: AssetImage("assets/images/dummy_user.png"),
                  fit: BoxFit.contain,)
                ),

                Image(image: AssetImage("assets/images/forword_icon.png")),


                Container(
                  width: parentWidth*0.13,
                  height: parentHeight*0.13,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      shape: BoxShape.circle
                  ),
                    child: Image(image: AssetImage("assets/images/dummy_user.png"),
                      fit: BoxFit.contain,)
                ),


              ],
            ),
          ),

          Padding(padding: EdgeInsets.only(top: parentHeight*0.02),
            child: Text(
              "Paying  Sangharsh Sulke",
              style: TextStyle(
                  fontSize: SizeConfig.blockSizeHorizontal * 3.2,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontFamily: 'Roboto_Regular'),
              textAlign: TextAlign.center,
            ),
          ),

          Padding(padding: EdgeInsets.only(top: parentHeight*0.015),
            child: Text(
              "+91 8356092011",
              style: TextStyle(
                  fontSize: SizeConfig.blockSizeHorizontal * 3.2,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontFamily: 'Roboto_Regular'),
              textAlign: TextAlign.center,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.03),
            child: Container(
              height: parentHeight*0.05,
              width: parentWidth*0.4,
              decoration: BoxDecoration(
                color: CommonColor.APP_NAME_COLOR.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10)
              ),
              child: TextFormField(
                cursorColor: CommonColor.APP_NAME_COLOR,
               textInputAction: TextInputAction.done,
               keyboardType: TextInputType.number,
               decoration: InputDecoration(
                 contentPadding: EdgeInsets.only(top: parentHeight*0.01),
                 hintText: 'Amount',
                 hintStyle: TextStyle(
                   fontSize: SizeConfig.blockSizeHorizontal*5.0,
                   fontFamily: 'Roboto_Regular',
                   fontWeight: FontWeight.w400,
                   color: Colors.black12,
                 ),
                 prefixIcon: Icon(Icons.currency_rupee,
                 color: CommonColor.APP_NAME_COLOR,),
                 focusedBorder: UnderlineInputBorder(
                   borderSide: BorderSide.none
                 ),
                   enabledBorder: UnderlineInputBorder(
                       borderSide: BorderSide.none
                   )
               ),style: TextStyle(
                fontSize: SizeConfig.blockSizeHorizontal*5.0,
                fontFamily: 'Roboto_Regular',
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.03),
            child: Text("One Thousand",
              style:TextStyle(
                  fontSize: SizeConfig.blockSizeHorizontal*4.0,
                  fontFamily: 'Roboto_Medium',
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  height: parentHeight*0.0013
              ),textAlign: TextAlign.center,),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.03),
            child: Container(
              height: parentHeight*0.045,
              width: parentWidth*0.4,
              decoration: BoxDecoration(
                  color: CommonColor.APP_NAME_COLOR.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: TextFormField(
                cursorColor: CommonColor.APP_NAME_COLOR,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: '    Add Notes',
                    hintStyle: TextStyle(
                      fontSize: SizeConfig.blockSizeHorizontal*5.0,
                      fontFamily: 'Roboto_Regular',
                      fontWeight: FontWeight.w400,
                      color: Colors.black12,
                    ),
                    contentPadding: EdgeInsets.only(left: parentWidth*0.03,right: parentWidth*0.03,bottom: parentHeight*0.01),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide.none
                    )
                ),style: TextStyle(
                fontSize: SizeConfig.blockSizeHorizontal*4.3,
                fontFamily: 'Roboto_Regular',
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              ),
            ),
          ),


          Padding(
            padding: EdgeInsets.only(
                top: SizeConfig.screenHeight * 0.2,
                left: SizeConfig.screenWidth * 0.1,
                right: SizeConfig.screenWidth * 0.1),
            child: GestureDetector(
              onDoubleTap: () {},
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>EnterUpiPinScreen()));
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
                      "Pay",
                      style: TextStyle(
                          fontSize:
                          SizeConfig.blockSizeHorizontal * 5.0,
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

        ],
      ),
    );
  }

}
