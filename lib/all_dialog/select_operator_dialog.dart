import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/upi_pin_confirm_screen.dart';




class SelectYourOperator extends StatefulWidget {
  const SelectYourOperator({Key? key}) : super(key: key);

  @override
  State<SelectYourOperator> createState() => _SelectYourOperatorState();
}

class _SelectYourOperatorState extends State<SelectYourOperator> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.screenHeight * 0.55,
      color: Colors.transparent,
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
            )),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.05, left: SizeConfig.screenWidth*0.05,),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: SizeConfig.screenWidth*0.1,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Select your Operator",
                          style: TextStyle(
                              fontSize: SizeConfig.blockSizeHorizontal*5.0,
                              fontFamily: "Roboto_Medium",
                              fontWeight: FontWeight.w500,
                              color: CommonColor.BLACK_COLOR
                          ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: SizeConfig.screenHeight*0.02,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Container(
                          height: SizeConfig.screenHeight*0.035,
                          width: SizeConfig.screenWidth*0.075,
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
                              child: Container(
                                width: SizeConfig.screenWidth*0.65,
                                color: Colors.transparent,
                                child: Text(
                                    "Airtel Prepaid",
                                    style: TextStyle(
                                        fontSize:
                                        SizeConfig.blockSizeHorizontal * 4.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontFamily: 'Roboto_Regular')
                                ),
                              ),
                            ),
                          ],
                        ),


                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.02),
                    child: Container(
                      height: SizeConfig.screenWidth*0.003,
                      color: CommonColor.TRANSFER_OPTION_BACKGROUND,
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
                    padding: EdgeInsets.only(
                      top: SizeConfig.screenHeight*0.02,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Container(
                          height: SizeConfig.screenHeight*0.035,
                          width: SizeConfig.screenWidth*0.075,
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
                              child: Container(
                                width: SizeConfig.screenWidth*0.65,
                                color: Colors.transparent,
                                child: Text(
                                    "BSNL Prepaid",
                                    style: TextStyle(
                                        fontSize:
                                        SizeConfig.blockSizeHorizontal * 4.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontFamily: 'Roboto_Regular')
                                ),
                              ),
                            ),
                          ],
                        ),


                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.02),
                    child: Container(
                      height: SizeConfig.screenWidth*0.003,
                      color: CommonColor.TRANSFER_OPTION_BACKGROUND,
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
                    padding: EdgeInsets.only(
                      top: SizeConfig.screenHeight*0.02,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Container(
                          height: SizeConfig.screenHeight*0.035,
                          width: SizeConfig.screenWidth*0.075,
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
                              child: Container(
                                width: SizeConfig.screenWidth*0.65,
                                color: Colors.transparent,
                                child: Text(
                                    "Jio Prepaid",
                                    style: TextStyle(
                                        fontSize:
                                        SizeConfig.blockSizeHorizontal * 4.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontFamily: 'Roboto_Regular')
                                ),
                              ),
                            ),
                          ],
                        ),


                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.02),
                    child: Container(
                      height: SizeConfig.screenWidth*0.003,
                      color: CommonColor.TRANSFER_OPTION_BACKGROUND,
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
                    padding: EdgeInsets.only(
                      top: SizeConfig.screenHeight*0.02,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Container(
                          height: SizeConfig.screenHeight*0.035,
                          width: SizeConfig.screenWidth*0.075,
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
                              child: Container(
                                width: SizeConfig.screenWidth*0.65,
                                color: Colors.transparent,
                                child: Text(
                                    "MTNL Prepaid",
                                    style: TextStyle(
                                        fontSize:
                                        SizeConfig.blockSizeHorizontal * 4.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontFamily: 'Roboto_Regular')
                                ),
                              ),
                            ),
                          ],
                        ),


                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.02),
                    child: Container(
                      height: SizeConfig.screenWidth*0.003,
                      color: CommonColor.TRANSFER_OPTION_BACKGROUND,
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
                    padding: EdgeInsets.only(
                      top: SizeConfig.screenHeight*0.02,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Container(
                          height: SizeConfig.screenHeight*0.035,
                          width: SizeConfig.screenWidth*0.075,
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
                              child: Container(
                                width: SizeConfig.screenWidth*0.65,
                                color: Colors.transparent,
                                child: Text(
                                    "Vi Prepaid",
                                    style: TextStyle(
                                        fontSize:
                                        SizeConfig.blockSizeHorizontal * 4.0,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                        fontFamily: 'Roboto_Regular')
                                ),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.02),
                    child: Container(
                      height: SizeConfig.screenWidth*0.003,
                      color: CommonColor.TRANSFER_OPTION_BACKGROUND,
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
                    padding: EdgeInsets.only(
                        top: SizeConfig.screenHeight * 0.02,
                        left: SizeConfig.screenWidth * 0.06,
                        right: SizeConfig.screenWidth * 0.1),
                    child: GestureDetector(
                      onDoubleTap: () {},
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>UpiPinSuccess(comeFrom: '2',)));
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
                              "Done",
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
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onDoubleTap: (){},
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  color: Colors.transparent,
                    child: Icon(Icons.clear)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
