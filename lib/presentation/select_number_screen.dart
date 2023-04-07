import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:scspay/all_dialog/number_verify_success.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';



class SelectNumberScreen extends StatefulWidget {
  const SelectNumberScreen({Key? key}) : super(key: key);

  @override
  State<SelectNumberScreen> createState() => _SelectNumberScreenState();
}

class _SelectNumberScreenState extends State<SelectNumberScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: EdgeInsets.only(
                top: SizeConfig.screenHeight * 0.1,),
            child: Image(
              image:  const AssetImage(
                  "assets/images/select_number_frame.png"),
              height: SizeConfig.screenHeight * 0.2,
            ),
          ),

          Padding(
            padding:
            EdgeInsets.only(top: SizeConfig.screenHeight * 0.05),
            child: Text(
              "Select Number",
              style: TextStyle(
                  fontSize: SizeConfig.blockSizeHorizontal * 6.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto_Bold',
                  color: CommonColor.APP_NAME_COLOR),
              textAlign: TextAlign.center,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
                top: SizeConfig.screenHeight * 0.03,
                left: SizeConfig.screenWidth * 0.07,
                right: SizeConfig.screenWidth * 0.07),
            child: Text(
              "Select Sim card that the Phone No. is register to your bank account we will send you one time verification code to start.  ",
              style: TextStyle(
                  fontSize: SizeConfig.blockSizeHorizontal * 3.0,
                  fontWeight: FontWeight.w400,
                  height: 1.0,
                  fontFamily: 'Roboto_Regular'),
              textAlign: TextAlign.center,
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.17,
                right: SizeConfig.screenWidth*0.17,
            top: SizeConfig.screenHeight*0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Image(image: AssetImage("assets/images/sim1.png")),
                    Text("+91 1234567890",
                      style: TextStyle(
                          fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                          fontWeight: FontWeight.w500,
                          height: 2,
                          fontFamily: 'Roboto_Regular'),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Image(image: AssetImage("assets/images/sim2.png")),
                    Text("+91 0987654321",
                      style: TextStyle(
                          fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                          fontWeight: FontWeight.w500,
                          height: 2,
                          fontFamily: 'Roboto_Regular'),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
                top: SizeConfig.screenHeight * 0.1,
                left: SizeConfig.screenWidth * 0.1,
                right: SizeConfig.screenWidth * 0.1),
            child: GestureDetector(
              onDoubleTap: () {},
              onTap: () {

                showCupertinoDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (context) {
                    return const AnimatedOpacity(
                        opacity: 1.0,
                        duration: Duration(seconds: 2),
                        child: NumberVerifyDialog());
                  },
                );

              },
              child: Container(
                height: SizeConfig.screenHeight * 0.06,
                decoration: BoxDecoration(
                    color: CommonColor.SIM_VERIFY_COLOR.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Verify",
                      style: TextStyle(
                          fontSize:
                          SizeConfig.blockSizeHorizontal * 4.5,
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
