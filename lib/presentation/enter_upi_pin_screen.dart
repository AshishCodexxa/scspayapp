import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/check_balance_screen.dart';
import 'package:scspay/presentation/upi_pin_success.dart';


class EnterUpiPinScreen extends StatefulWidget {


  final String comeFrom;

  const EnterUpiPinScreen({Key? key, this.comeFrom = ''}) : super(key: key);

  @override
  State<EnterUpiPinScreen> createState() => _EnterUpiPinScreenState();
}

class _EnterUpiPinScreenState extends State<EnterUpiPinScreen> {


  TextEditingController firstPin = TextEditingController();
  TextEditingController secondPin = TextEditingController();
  TextEditingController thirdPin = TextEditingController();
  TextEditingController fourthPin = TextEditingController();

  final firstFocus = FocusNode();
  final secondFocus = FocusNode();
  final thirdFocus = FocusNode();
  final fourthFocus = FocusNode();


  bool pinShow = true;

  void _toggle() {
    setState(() {
      pinShow = !pinShow;
    });
  }




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
            child: getAllPinScreen(SizeConfig.screenHeight, SizeConfig.screenWidth),
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

  Widget getAllPinScreen(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(top: parentHeight*0.1),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Enter 4 Digit UPI Pin",
                style: TextStyle(
                    fontSize: SizeConfig.blockSizeHorizontal * 4.5,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontFamily: 'Roboto_Regular'),
                textAlign: TextAlign.center,
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.09, left: parentWidth*0.15, right: parentWidth*0.15),
            child: Container(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [


                  Container(
                    color: Colors.transparent,
                    width: parentWidth*0.15,
                    child: TextFormField(
                      controller: firstPin,
                      focusNode: firstFocus,
                      obscureText: pinShow,
                      obscuringCharacter: '●',
                      decoration: const InputDecoration(
                        counterText: "",
                      ),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      style: TextStyle(
                        fontSize: SizeConfig.blockSizeHorizontal*9.0,
                        color: Colors.black,
                        fontFamily: 'Roboto_Bold',
                        fontWeight: FontWeight.w500,
                      ),
                      onChanged: (value){
                        if(value.length == 1){
                          final node = FocusScope.of(context);
                          node.nextFocus();
                        }
                      },
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    width: parentWidth*0.15,
                    child: TextFormField(
                      controller: secondPin,
                      focusNode: secondFocus,
                      obscureText: pinShow,
                      obscuringCharacter: '●',
                      decoration: const InputDecoration(
                        counterText: "",
                      ),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      style: TextStyle(
                        fontSize: SizeConfig.blockSizeHorizontal*9.0,
                        color: Colors.black,
                        fontFamily: 'Roboto_Bold',
                        fontWeight: FontWeight.w500,
                      ),
                      onChanged: (value){
                        if(value.length == 1){
                          final node = FocusScope.of(context);
                          node.nextFocus();
                        }
                      },
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    width: parentWidth*0.15,
                    child: TextFormField(
                      controller: thirdPin,
                      focusNode: thirdFocus,
                      obscureText: pinShow,
                      obscuringCharacter: '●',
                      decoration: const InputDecoration(
                        counterText: "",
                      ),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      style: TextStyle(
                        fontSize: SizeConfig.blockSizeHorizontal*9.0,
                        color: Colors.black,
                        fontFamily: 'Roboto_Bold',
                        fontWeight: FontWeight.w500,
                      ),
                      onChanged: (value){
                        if(value.length == 1){
                          final node = FocusScope.of(context);
                          node.nextFocus();
                        }
                      },
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    width: parentWidth*0.15,
                    child: TextFormField(
                      controller: fourthPin,
                      focusNode: fourthFocus,
                      obscureText: pinShow,
                      obscuringCharacter: '●',
                      decoration: const InputDecoration(
                        counterText: "",
                      ),
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      style: TextStyle(
                        fontSize: SizeConfig.blockSizeHorizontal*9.0,
                        color: Colors.black,
                        fontFamily: 'Roboto_Bold',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.05),
            child: pinShow ? GestureDetector(
              onDoubleTap: (){},
              onTap: (){
                _toggle();
              },
              child: Container(
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Icon(Icons.remove_red_eye,
                      color: CommonColor.APP_NAME_COLOR.withOpacity(0.3),),

                    Padding(
                      padding: EdgeInsets.only(left: parentWidth*0.02),
                      child: Text(
                        "Show",
                        style: TextStyle(
                            fontSize:
                            SizeConfig.blockSizeHorizontal * 4.5,
                            fontWeight: FontWeight.w400,
                            color: CommonColor.APP_NAME_COLOR.withOpacity(0.3),
                            fontFamily: 'Roboto_Regular'),
                        textAlign: TextAlign.center,
                      ),
                    ),

                  ],
                ),
              ),
            )
                :GestureDetector(
              onDoubleTap: (){},
              onTap: (){
                _toggle();
              },
              child: Container(
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Image(image: AssetImage("assets/images/hide_password.png"),
                      color: CommonColor.APP_NAME_COLOR.withOpacity(0.3),),

                    Padding(
                      padding: EdgeInsets.only(left: parentWidth*0.02),
                      child: Text(
                        "Hide",
                        style: TextStyle(
                            fontSize:
                            SizeConfig.blockSizeHorizontal * 4.5,
                            fontWeight: FontWeight.w400,
                            color: CommonColor.APP_NAME_COLOR.withOpacity(0.3),
                            fontFamily: 'Roboto_Regular'),
                        textAlign: TextAlign.center,
                      ),
                    ),

                  ],
                ),
              ),
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
                widget.comeFrom == "1" ?
                Navigator.push(context, MaterialPageRoute(builder: (context)=>UpiPinSuccess(comeFrom: '2',)))
                :  widget.comeFrom == "2" ?
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckBalance())) :
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckBalance()));
              },
              child: Container(
                height: SizeConfig.screenHeight * 0.06,
                decoration: BoxDecoration(
                    color: CommonColor.APP_NAME_COLOR,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Confirm",
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
}
