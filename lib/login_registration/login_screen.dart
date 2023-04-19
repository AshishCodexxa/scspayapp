import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/dashboard_parent_screen.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {



  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FocusNode userFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  bool isChecked = false;


  bool passwordShow = true;

  void _toggle() {
    setState(() {
      passwordShow = !passwordShow;
    });
  }



  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
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
              "Login",
              style: TextStyle(
                  fontSize: SizeConfig.blockSizeHorizontal * 6.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto_Bold',
                  color: CommonColor.APP_NAME_COLOR),
              textAlign: TextAlign.center,
            ),
          ),

          getUserNamePassLayout(SizeConfig.screenHeight, SizeConfig.screenWidth)
        ],
      ),
    );
  }


  Widget getUserNamePassLayout(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(left: parentWidth*0.06, right: parentWidth*0.07, top: parentHeight*0.05),
      child: Column(
        children: [

          TextFormField(
            controller: userNameController,
            focusNode: userFocus,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                hintText: 'User Name',
                hintStyle: TextStyle(
                  color: Colors.black26,
                  fontSize: SizeConfig.blockSizeHorizontal*4.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto_Regular'
                ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 1, color: Colors.black26),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 1, color: Colors.black26),
              ),
                ),
            style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.blockSizeHorizontal*4.0,
                fontWeight: FontWeight.w400,
                fontFamily: 'Roboto_Regular'
            ),
          ),

          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.04),
            child: TextFormField(
              controller: passwordController,
              focusNode: passwordFocus,
              obscureText: passwordShow,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(
                    color: Colors.black26,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto_Regular'
                ),
                  suffixIcon: passwordShow
                      ? Padding(
                    padding: EdgeInsets.only(
                        right: SizeConfig.screenWidth * 0.01),
                    child: GestureDetector(
                      onDoubleTap: () {},
                      onTap: () {
                        _toggle();
                      },
                      child: Container(
                        // color: Colors.red,
                        child: Image(
                          image: AssetImage("assets/images/close_eye.png"),
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )
                      : GestureDetector(
                    onDoubleTap: () {},
                    onTap: () {
                      _toggle();
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: Icon(
                        Icons.remove_red_eye,
                        color: Colors.black,
                      ),
                    ),
                  ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, color: Colors.black26),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      width: 1, color: Colors.black26),
                ),
              ),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: SizeConfig.blockSizeHorizontal*4.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto_Regular'
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: parentWidth*0.03, top: parentHeight*0.02),
                child: Container(
                  color: Colors.transparent,
                  child: Text(
                    "Forgot Password ?",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.blockSizeHorizontal * 3.5,
                        fontFamily: 'Roboto_Regular',
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),


          Padding(
            padding: EdgeInsets.only(top: parentHeight * 0.04),
            child: Row(
              children: [
                Container(
                  height: parentHeight * 0.07,
                  width: parentWidth * 0.07,
                  child: Column(
                    children: <Widget>[
                      Checkbox(
                        checkColor: Colors.white,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: parentWidth * 0.01),
                      child: RichText(
                          text: const TextSpan(
                              text: "I have read and agree to SCS Pay",
                              style: TextStyle(
                                  color: CommonColor.BLACK_COLOR,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto-Regular',
                                  fontSize: 13),
                              children: [
                                TextSpan(
                                    text: " Privacy Policy ",
                                    style: TextStyle(
                                        color: CommonColor.APP_NAME_COLOR,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Roboto-Regular',
                                        fontSize: 13)),
                                TextSpan(
                                    text: "and\n",
                                    style: TextStyle(
                                        color: CommonColor.BLACK_COLOR,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto-Regular',
                                        fontSize: 13)),
                                TextSpan(
                                  text: "Terms of Service.\n",
                                  style: TextStyle(
                                      color: CommonColor.APP_NAME_COLOR,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Roboto-Regular',
                                      fontSize: 13),
                                )
                              ])),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
                top: SizeConfig.screenHeight * 0.05,
                left: SizeConfig.screenWidth * 0.1,
                right: SizeConfig.screenWidth * 0.1),
            child: GestureDetector(
              onDoubleTap: () {},
              onTap: () {

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Dashboard()));

              },
              child: Container(
                height: SizeConfig.screenHeight * 0.06,
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
    );
  }
}
