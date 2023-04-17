import 'package:flutter/material.dart';
import 'package:scspay/all_dialog/gas_booking_method_dialog.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';





class GasBookingScreen extends StatefulWidget {
  const GasBookingScreen({Key? key}) : super(key: key);

  @override
  State<GasBookingScreen> createState() => _GasBookingScreenState();
}

class _GasBookingScreenState extends State<GasBookingScreen> {




  String employeeValue = 'Registered Contact Number';

  var employeeCount = [
    'Registered Contact Number',
    'LPG ID',
  ];




  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            children: [

              Container(
                color: CommonColor.APP_BAR_COLOR,
                height: SizeConfig.safeUsedHeight * .12,
                child: getTopText(SizeConfig.screenHeight, SizeConfig.screenWidth),
              ),

              Container(
                color: CommonColor.LAYOUT_BACKGROUND_COLOR,
                height: SizeConfig.safeUsedHeight * .88,
                child: AllBookingMethod(SizeConfig.screenHeight, SizeConfig.screenWidth),
              ),


            ],
          ),
          GestureDetector(
            onDoubleTap: (){},
            onTap: (){
              showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  elevation: 10,
                  isScrollControlled: true,
                  isDismissible: true,
                  builder: (BuildContext bc) {
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                      ),
                      child: GasBookingMethod(),
                    );
                  });
            },
            child: Container(
              height: SizeConfig.screenHeight*0.05,
              color: CommonColor.SIM_VERIFY_COLOR.withOpacity(0.5),
              child:  Center(
                child: Text("Confirm",
                  style: TextStyle(
                      fontSize: SizeConfig.blockSizeHorizontal*5.0,
                      fontFamily: "Roboto_Medium",
                      fontWeight: FontWeight.w500,
                      color: CommonColor.WHITE_COLOR
                  ),),
              ),
            ),
          )
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
            child: Text("Bharat Gas",
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


  Widget AllBookingMethod(double parentHeight, double parentWidth){
    return Column(
      children: [

        Padding(
          padding: EdgeInsets.only(top: parentHeight*0.03),
          child: Container(
            height: parentHeight*0.07,
            width: parentWidth*0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(7)
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  left: parentWidth*0.05
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container(
                    height: SizeConfig.screenHeight*0.034,
                    width: SizeConfig.screenWidth*0.079,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.black)
                    ),
                    child: Text("hii",
                      style: TextStyle(
                          color: Colors.transparent
                      ),),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Padding(
                        padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03,),
                        child: GestureDetector(
                          onDoubleTap: (){},
                          onTap: (){
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>GasBookingScreen()));
                          },
                          child: Container(
                            width: SizeConfig.screenWidth*0.65,
                            color: Colors.transparent,
                            child: Text(
                                "VIEW SAMPLE BILL",
                                style: TextStyle(
                                    fontSize:
                                    SizeConfig.blockSizeHorizontal * 4.4,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                    fontFamily: 'Roboto_Regular')
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),


                ],
              ),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(left: parentWidth*0.05,
              right: parentWidth*0.05,
              top: parentHeight*0.03),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(7)
            ),
            child: Padding(
              padding: EdgeInsets.only(left: parentWidth*0.05,
                right: parentWidth*0.05,
              top: parentHeight*0.03),
              child: Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                          "Select Booking Method",
                          style: TextStyle(
                              fontSize:
                              SizeConfig.blockSizeHorizontal * 4.5,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontFamily: 'Roboto_Bold')
                      ),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                        top: parentHeight*0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            "Booking Using",
                            style: TextStyle(
                                fontSize: SizeConfig.blockSizeHorizontal * 4.4,
                                fontWeight: FontWeight.w500,
                                color: Colors.black26,
                                fontFamily: 'Roboto_Medium')
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(right: parentWidth*0.03),
                    child: Container(
                      width: parentWidth*0.9,
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: 1, color: Colors.black26),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                width: 1, color: Colors.black26),
                          ),
                        ),
                        value: employeeValue,
                        style: TextStyle(
                            color: employeeValue == "Registered Contact Number"
                                ? Colors.black54
                                : Colors.black,
                        fontSize: SizeConfig.blockSizeHorizontal*4.5),
                        icon: Icon(Icons.arrow_drop_down),
                        items: employeeCount.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            employeeValue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),


                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: parentWidth*0.0, right: parentWidth*0.03,
                        top: parentHeight*0.01),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: "Registered Contact Number",
                            labelStyle: TextStyle(
                                fontSize: SizeConfig.blockSizeHorizontal*3.9,
                                fontFamily: "Roboto_Regular",
                                fontWeight: FontWeight.w400,
                                color: CommonColor.PAYMENT_SETTING_COLOR.withOpacity(0.3)
                            ),
                            suffixIcon: Icon(Icons.perm_contact_cal,
                              color: CommonColor.BLACK_COLOR,),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: parentHeight*0.011),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Please Enter Valid Registered Contact Number",
                              style: TextStyle(
                                  fontSize: SizeConfig.blockSizeHorizontal*2.5,
                                  fontFamily: "Roboto_Regular",
                                  fontWeight: FontWeight.w400,
                                  color: CommonColor.BLACK_COLOR
                              ),),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: parentHeight*0.02,
                  )

                ],
              ),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(left: parentWidth*0.05,
              right: parentWidth*0.05,
              top: parentHeight*0.03),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7)
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: parentHeight*0.02,
                  left: parentWidth*0.05,
                  right: parentWidth*0.05),
                  child: RichText(
                      text: TextSpan(
                          text: "Please Note :",
                          style: TextStyle(
                              color: CommonColor.BLACK_COLOR,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto_Medium',
                              fontSize: SizeConfig.blockSizeHorizontal*2.3),
                          children: [
                            TextSpan(
                              text: " Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.",
                              style: TextStyle(
                                  color: CommonColor.BLACK_COLOR,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto-Regular',
                                  height: parentHeight*0.0015,
                                  fontSize: SizeConfig.blockSizeHorizontal*2.0),
                            )
                          ])),
                ),
                SizedBox(
                  height: parentHeight*0.02,
                )
              ],
            ),
          ),
        ),

      ],
    );
  }
}
