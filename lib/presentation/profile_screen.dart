import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/bank_select_screen.dart';
import 'package:scspay/presentation/edit_profile_screen.dart';



class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
              padding: EdgeInsets.only(bottom: SizeConfig.screenHeight*0.1),
              children: [
                getProfileDetails(SizeConfig.screenHeight, SizeConfig.screenWidth),
                paymentInstruction(SizeConfig.screenHeight, SizeConfig.screenWidth),
                paymentSettings(SizeConfig.screenHeight, SizeConfig.screenWidth),
                settingAndPreferenceLayout(SizeConfig.screenHeight, SizeConfig.screenWidth),
                securityLayout(SizeConfig.screenHeight, SizeConfig.screenWidth),
                aboutUsLayout(SizeConfig.screenHeight, SizeConfig.screenWidth),
                logoutLayout(SizeConfig.screenHeight, SizeConfig.screenWidth),
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
                child: const Icon(Icons.arrow_back_ios_new)),
          ),
          Container(
              color: Colors.transparent,
              child: const Icon(Icons.arrow_back_ios_new,
              color: Colors.transparent,)),
        ],
      ),
    );
  }

  Widget getProfileDetails(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.03),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: parentWidth*0.94,
            height: parentHeight*0.12,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: parentWidth*0.26,
                          height: parentHeight*0.1,
                          decoration: const BoxDecoration(
                            color: CommonColor.PROFILE_BACKGROUND_COLOR,
                            shape: BoxShape.circle
                          ),
                          ),
                      Padding(
                        padding:  EdgeInsets.only(left: parentWidth*0.03),
                        child: Container(
                          color: Colors.transparent,
                          width: parentWidth*0.52,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Mahesh Walse ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Roboto_Bold'
                                ),),
                              Padding(
                                padding:  EdgeInsets.only(top: parentHeight*0.01),
                                child: Text("+918397055611 ",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Roboto_Regular'
                                  ),),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      onDoubleTap: (){},
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const EditProfile()));
                      },
                      child: Container(
                        color: Colors.transparent,
                          child: const Icon(Icons.edit)
                      ),
                    ),
                  )
                ],
              )
          ),
        ],
      ),
    );
  }

  Widget paymentInstruction(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.03),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: parentWidth*0.94,
                height: parentHeight*0.27,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),)
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: parentHeight*0.02, left: parentWidth*0.03, right: parentWidth*0.03),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Payment Instruction",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto_Bold'
                              ),),
                            GestureDetector(
                              onDoubleTap: (){},
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const BankSelectionScreen()));
                              },
                              child: Container(
                                color: Colors.transparent,
                                child: Text("+ Add Bank Account",
                                  style: TextStyle(
                                      color: CommonColor.WELCOME_TEXT_COLOR,
                                      fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Roboto_Bold'
                                  ),),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: parentHeight*0.02),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Bank Account",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto_Regular'
                                ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: parentHeight*0.01),
                          child: Container(
                            height: parentHeight*0.16,
                            decoration: BoxDecoration(
                              color: CommonColor.BANK_BACKGROUND_COLOR,
                              borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        )
                      ],
                    ),
                  )
              ),
              Container(
                height: parentHeight*0.05,
                width: parentWidth*0.94,
                decoration: const BoxDecoration(
                  color: CommonColor.APP_BAR_COLOR,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10),)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("View All Payment Methods",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.blockSizeHorizontal*3.5,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto_Regular'
                      ),),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget paymentSettings(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.03,right: parentWidth*0.03,),
      child: Container(
        height: parentHeight*0.3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
                Padding(
                  padding: EdgeInsets.only(left: parentWidth*0.03,
                  top: parentHeight*0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Payment Settings",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeHorizontal*4.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto_Bold'
                        ),),
                    ],
                  ),
                ),
            Padding(
              padding: EdgeInsets.only(top: parentHeight*0.03, left: parentWidth*0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.settings),
                      Padding(
                        padding: EdgeInsets.only(left: parentWidth*0.05),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("UPI Settings",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto_Bold'
                              ),),

                            Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.006),
                              child: Text("View all your UPI IDs",
                                style: TextStyle(
                                    color: CommonColor.SIM_VERIFY_COLOR,
                                    fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto_Regular'
                                ),),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: parentWidth*0.04),
                    child: const Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: parentWidth*0.015, right: parentWidth*0.015, top: parentHeight*0.02),
              child: Container(
                height: parentHeight*0.003,
                color: CommonColor.LAYOUT_BACKGROUND_COLOR,
                child: Row(
                  children: const [
                    Text("hii",
                    style: TextStyle(
                      color: Colors.transparent
                    ),),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: parentHeight*0.02, left: parentWidth*0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Image(image: AssetImage("assets/images/scanner_img.png"),color: Colors.black,),
                      Padding(
                        padding: EdgeInsets.only(left: parentWidth*0.05),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("QR Codes",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto_Bold'
                              ),),

                            Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.006),
                              child: Text("View your QR codes",
                                style: TextStyle(
                                    color: CommonColor.SIM_VERIFY_COLOR,
                                    fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto_Regular'
                                ),),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: parentWidth*0.04),
                    child: const Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: parentWidth*0.015, right: parentWidth*0.015, top: parentHeight*0.02),
              child: Container(
                height: parentHeight*0.003,
                color: CommonColor.LAYOUT_BACKGROUND_COLOR,
                child: Row(
                  children: const [
                    Text("hii",
                      style: TextStyle(
                          color: Colors.transparent
                      ),),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: parentHeight*0.02, left: parentWidth*0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.notifications),
                      Padding(
                        padding: EdgeInsets.only(left: parentWidth*0.05),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Reminders",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto_Bold'
                              ),),

                            Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.006),
                              child: Text("Never miss another bill payment",
                                style: TextStyle(
                                    color: CommonColor.SIM_VERIFY_COLOR,
                                    fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto_Regular'
                                ),),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: parentWidth*0.04),
                    child: const Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget settingAndPreferenceLayout(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.03,right: parentWidth*0.03,),
      child: Container(
        height: parentHeight*0.3,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: parentWidth*0.03,
                  top: parentHeight*0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Setting & Preferences",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.blockSizeHorizontal*4.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto_Bold'
                    ),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: parentHeight*0.03, left: parentWidth*0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Image(image: AssetImage("assets/images/language_icon.png")),
                      Padding(
                        padding: EdgeInsets.only(left: parentWidth*0.05),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Languages",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto_Bold'
                              ),),

                            Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.006),
                              child: Text("Chosen Language: English",
                                style: TextStyle(
                                    color: CommonColor.SIM_VERIFY_COLOR,
                                    fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto_Regular'
                                ),),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: parentWidth*0.04),
                    child: const Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: parentWidth*0.015, right: parentWidth*0.015, top: parentHeight*0.02),
              child: Container(
                height: parentHeight*0.003,
                color: CommonColor.LAYOUT_BACKGROUND_COLOR,
                child: Row(
                  children: const [
                    Text("hii",
                      style: TextStyle(
                          color: Colors.transparent
                      ),),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: parentHeight*0.02, left: parentWidth*0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Image(image: AssetImage("assets/images/profile_bell.png"),),
                      Padding(
                        padding: EdgeInsets.only(left: parentWidth*0.05),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Bill Notification",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto_Bold'
                              ),),

                            Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.006),
                              child: Text("Receive alert when bill is generated ",
                                style: TextStyle(
                                    color: CommonColor.SIM_VERIFY_COLOR,
                                    fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto_Regular'
                                ),),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: parentWidth*0.04),
                    child: const Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: parentWidth*0.015, right: parentWidth*0.015, top: parentHeight*0.02),
              child: Container(
                height: parentHeight*0.003,
                color: CommonColor.LAYOUT_BACKGROUND_COLOR,
                child: Row(
                  children: const [
                    Text("hii",
                      style: TextStyle(
                          color: Colors.transparent
                      ),),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: parentHeight*0.02, left: parentWidth*0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                     const Image(image: AssetImage("assets/images/permissions_icon.png")),
                      Padding(
                        padding: EdgeInsets.only(left: parentWidth*0.05),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Permissions",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto_Bold'
                              ),),

                            Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.006),
                              child: Text("Manage data sharing settings",
                                style: TextStyle(
                                    color: CommonColor.SIM_VERIFY_COLOR,
                                    fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto_Regular'
                                ),),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: parentWidth*0.04),
                    child: const Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget securityLayout(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.03,right: parentWidth*0.03,),
      child: Container(
        height: parentHeight*0.29,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: parentWidth*0.03,
                  top: parentHeight*0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Security",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.blockSizeHorizontal*4.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto_Bold'
                    ),),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: parentHeight*0.03, left: parentWidth*0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Image(image: AssetImage("assets/images/finger_print.png")),
                      Padding(
                        padding: EdgeInsets.only(left: parentWidth*0.05),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Screen Lock",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto_Bold'
                              ),),

                            Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.006),
                              child: Text("Biometric & screen locks",
                                style: TextStyle(
                                    color: CommonColor.SIM_VERIFY_COLOR,
                                    fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto_Regular'
                                ),),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: parentWidth*0.04),
                    child: const Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: parentWidth*0.015, right: parentWidth*0.015, top: parentHeight*0.02),
              child: Container(
                height: parentHeight*0.003,
                color: CommonColor.LAYOUT_BACKGROUND_COLOR,
                child: Row(
                  children: const [
                    Text("hii",
                      style: TextStyle(
                          color: Colors.transparent
                      ),),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: parentHeight*0.02, left: parentWidth*0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.vpn_key_sharp),
                      Padding(
                        padding: EdgeInsets.only(left: parentWidth*0.05),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Set UPI Password",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto_Bold'
                              ),),

                            Padding(
                              padding: EdgeInsets.only(top: parentHeight*0.006),
                              child: Text("Secure your account with a password",
                                style: TextStyle(
                                    color: CommonColor.SIM_VERIFY_COLOR,
                                    fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto_Regular'
                                ),),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: parentWidth*0.04),
                    child: const Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: parentWidth*0.015, right: parentWidth*0.015, top: parentHeight*0.02),
              child: Container(
                height: parentHeight*0.003,
                color: CommonColor.LAYOUT_BACKGROUND_COLOR,
                child: Row(
                  children: const [
                    Text("hii",
                      style: TextStyle(
                          color: Colors.transparent
                      ),),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: parentHeight*0.02, left: parentWidth*0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                     const Image(image: AssetImage("assets/images/block_person.png")),
                      Padding(
                        padding: EdgeInsets.only(left: parentWidth*0.05),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Block Contact",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Roboto_Bold'
                              ),),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: parentWidth*0.04),
                    child: const Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget aboutUsLayout(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.03,right: parentWidth*0.03,),
      child: Container(
        height: parentHeight*0.06,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: EdgeInsets.only( left: parentWidth*0.04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.info),
                  Padding(
                    padding: EdgeInsets.only(left: parentWidth*0.05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("About Us",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal*4.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto_Bold'
                          ),),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(right: parentWidth*0.04),
                child: const Icon(Icons.arrow_forward_ios),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget logoutLayout(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.03,right: parentWidth*0.03,),
      child: Container(
        height: parentHeight*0.06,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: EdgeInsets.only( left: parentWidth*0.04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.logout),
                  Padding(
                    padding: EdgeInsets.only(left: parentWidth*0.05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Logout",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeHorizontal*4.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto_Bold'
                          ),),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
