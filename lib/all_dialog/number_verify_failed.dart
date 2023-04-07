import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';



class NumberVerifyFailed extends StatefulWidget {
  const NumberVerifyFailed({Key? key}) : super(key: key);

  @override
  State<NumberVerifyFailed> createState() => _NumberVerifyFailedState();
}

class _NumberVerifyFailedState extends State<NumberVerifyFailed> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
            left: SizeConfig.screenWidth * .13,
            right: SizeConfig.screenWidth * .13),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child:  Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: SizeConfig.screenHeight*0.27,
                width: SizeConfig.screenWidth*0.9,
                decoration:  const BoxDecoration(
                  borderRadius:  BorderRadius.all(Radius.circular(25.0)),
                ),
                child:  Padding(
                  padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.05),
                  child: Column(
                    children: [

                      Stack(
                        alignment: Alignment.center,
                        children: [
                          const Image(image: AssetImage("assets/images/verify_failed_circle.png")),
                          const Image(image: AssetImage("assets/images/verify_failed_cross.png")),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.02),
                        child: Text("Oops!",
                          style: TextStyle(
                              fontSize:
                              SizeConfig.blockSizeHorizontal * 4.5,
                              fontWeight: FontWeight.w500,
                              color: CommonColor.OOPS_TEXT_COLOR,
                              fontFamily: 'Roboto_Bold'),
                          textAlign: TextAlign.center,
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.02),
                        child: Text("Your number is not verified.",
                          style: TextStyle(
                              fontSize:
                              SizeConfig.blockSizeHorizontal * 4.5,
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
                padding: EdgeInsets.all(20.0),
                child: GestureDetector(
                  onDoubleTap: (){},
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: Icon(Icons.clear,
                    color: Colors.red,),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
