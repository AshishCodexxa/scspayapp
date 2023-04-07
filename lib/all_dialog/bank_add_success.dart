import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/login_registration/login_screen.dart';
import 'package:scspay/presentation/create_upi_pin_screen.dart';




class BankAccountAdded extends StatefulWidget {
  const BankAccountAdded({Key? key}) : super(key: key);

  @override
  State<BankAccountAdded> createState() => _BankAccountAddedState();
}

class _BankAccountAddedState extends State<BankAccountAdded> {
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
          child:  Container(
            height: SizeConfig.screenHeight*0.35,
            width: SizeConfig.screenWidth*0.9,
            decoration:  const BoxDecoration(
              borderRadius:  BorderRadius.all(Radius.circular(25.0)),
            ),
            child:  Padding(
              padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03),
              child: Column(
                children: [

                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const Image(image: AssetImage("assets/images/done_image.png")),
                      Padding(
                        padding: EdgeInsets.only(bottom: SizeConfig.screenHeight*0.043),
                        child: const Image(image: AssetImage("assets/images/success_tick.png")),
                      ),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.02, left: SizeConfig.screenWidth*0.07, right: SizeConfig.screenWidth*0.05),
                    child: Text("Bank Account has been added successfully",
                      style: TextStyle(
                          fontSize:
                          SizeConfig.blockSizeHorizontal * 4.5,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontFamily: 'Roboto_Regular'),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                        top: SizeConfig.screenHeight * 0.03,
                        left: SizeConfig.screenWidth * 0.1,
                        right: SizeConfig.screenWidth * 0.1),
                    child: GestureDetector(
                      onDoubleTap: () {},
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateUpiPin()));
                      },
                      child: Container(
                        height: SizeConfig.screenHeight * 0.05,
                        decoration: BoxDecoration(
                            color: CommonColor.WELCOME_TEXT_COLOR,
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Continue",
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
            ),
          ),
        ),
      ),
    );
  }
}
