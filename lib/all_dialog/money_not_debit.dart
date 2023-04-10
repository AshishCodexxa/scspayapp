import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/upi_pin_put_screen.dart';



class MoneyNotDebit extends StatefulWidget {
  const MoneyNotDebit({Key? key}) : super(key: key);

  @override
  State<MoneyNotDebit> createState() => _MoneyNotDebitState();
}

class _MoneyNotDebitState extends State<MoneyNotDebit> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: SizeConfig.screenHeight*0.45,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03),
              child: Container(
                height: SizeConfig.screenHeight*0.21,
                width: SizeConfig.screenWidth*0.9,
                decoration: BoxDecoration(
                  color: CommonColor.NOT_DEBIT_COLOR,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.017, left: SizeConfig.screenWidth*0.03),
                          child: Icon(Icons.error_outline,color: CommonColor.DEBIT_ERROR_COLOR,),
                        ),
                        Padding(padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.02, left: SizeConfig.screenWidth*0.02),
                          child: Text(
                            "Money was not debited",
                            style: TextStyle(
                                fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontFamily: 'Roboto_Bold'),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: SizeConfig.screenHeight*0.017,
                        left: SizeConfig.screenWidth*0.11,
                        right: SizeConfig.screenWidth*0.1
                      ),
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.",
                        style: TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontFamily: 'Roboto_Regular'),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
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

                },
                child: Container(
                  height: SizeConfig.screenHeight * 0.055,
                  decoration: BoxDecoration(
                      color: CommonColor.WHITE_COLOR,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: CommonColor.APP_NAME_COLOR)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Set UPI PIN",
                        style: TextStyle(
                            fontSize:
                            SizeConfig.blockSizeHorizontal * 4.5,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontFamily: 'Roboto_Bold'),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>UpiPinScreen()));
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
                        "Retry",
                        style: TextStyle(
                            fontSize:
                            SizeConfig.blockSizeHorizontal * 4.5,
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
      )
    );
  }
}
