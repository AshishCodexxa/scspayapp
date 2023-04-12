import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/payment_transaction_info_screen.dart';



class UpiPinSuccess extends StatefulWidget {

  final String comeFrom;

  const UpiPinSuccess({Key? key, required this.comeFrom}) : super(key: key);

  @override
  State<UpiPinSuccess> createState() => _UpiPinSuccessState();
}

class _UpiPinSuccessState extends State<UpiPinSuccess> {
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
            child: Center(
              child:widget.comeFrom == '1' ? Stack(
                alignment: Alignment.center,
                children: [
                  Image(image: AssetImage("assets/images/upi_pin_success.png"),),
                  Padding(
                    padding: EdgeInsets.only(bottom: SizeConfig.screenHeight*0.057),
                    child: Image(image: AssetImage("assets/images/upi_pin_tick.png"),),
                  )
                ],
              )
              : widget.comeFrom == '2' ?
              GestureDetector(
                onDoubleTap: (){},
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentTransactionInfo()));
                },
                child: Container(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image(image: AssetImage("assets/images/payment_done.png"),),
                      Padding(
                        padding: EdgeInsets.only(bottom: SizeConfig.screenHeight*0.057),
                        child: Image(image: AssetImage("assets/images/upi_pin_tick.png"),),
                      )
                    ],
                  ),
                ),
              ) :
              widget.comeFrom == '3' ?
              GestureDetector(
                onDoubleTap: (){},
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentTransactionInfo()));
                },
                child: Container(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image(image: AssetImage("assets/images/recharge_success.png"),),
                      Padding(
                        padding: EdgeInsets.only(bottom: SizeConfig.screenHeight*0.057),
                        child: Image(image: AssetImage("assets/images/recharge_tick.png"),),
                      )
                    ],
                  ),
                ),
              ) :
              GestureDetector(
                onDoubleTap: (){},
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentTransactionInfo()));
                },
                child: Container(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image(image: AssetImage("assets/images/payment_done.png"),),
                      Padding(
                        padding: EdgeInsets.only(bottom: SizeConfig.screenHeight*0.057),
                        child: Image(image: AssetImage("assets/images/upi_pin_tick.png"),),
                      )
                    ],
                  ),
                ),
              )

            )
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
          const Icon(Icons.notifications,
            color: Colors.transparent,)
        ],
      ),
    );
  }
}