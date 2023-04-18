import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';




class CheckBalance extends StatefulWidget {
  const CheckBalance({Key? key}) : super(key: key);

  @override
  State<CheckBalance> createState() => _CheckBalanceState();
}

class _CheckBalanceState extends State<CheckBalance> {
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
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.1),
              children: [
                balanceContainer(SizeConfig.screenHeight, SizeConfig.screenWidth)
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
            child: Text("Check Balance",
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

  Widget balanceContainer(double parentHeight, double parentWidth){
    return Column(

      children: [

        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, left: parentWidth*0.03),
          child: Container(
            height: parentHeight*0.1,
            width: parentWidth*0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.03),
                  child: Text(
                    "Saving Account",
                    style: TextStyle(
                        fontSize:
                        SizeConfig.blockSizeHorizontal * 5.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontFamily: 'Roboto_Bold'),
                    textAlign: TextAlign.center,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: parentHeight*0.01, left: parentWidth*0.03),
                  child: Text(
                    "Arambha Nidhi Bank",
                    style: TextStyle(
                        fontSize:
                        SizeConfig.blockSizeHorizontal * 4.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontFamily: 'Roboto_Regular'),
                    textAlign: TextAlign.center,
                  ),
                ),

              ],
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03, left: parentWidth*0.03),
          child: Container(
            height: parentHeight*0.1,
            width: parentWidth*0.9,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.03),
                  child: Text(
                    "Account Balance",
                    style: TextStyle(
                        fontSize:
                        SizeConfig.blockSizeHorizontal * 5.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontFamily: 'Roboto_Bold'),
                    textAlign: TextAlign.center,
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: parentHeight*0.01, left: parentWidth*0.03),
                  child: Text(
                    "Rs 4,000",
                    style: TextStyle(
                        fontSize:
                        SizeConfig.blockSizeHorizontal * 4.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontFamily: 'Roboto_Regular'),
                    textAlign: TextAlign.center,
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
