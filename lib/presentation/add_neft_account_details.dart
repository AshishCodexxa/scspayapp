import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';




class NEFTAccountAddScreen extends StatefulWidget {
  const NEFTAccountAddScreen({Key? key}) : super(key: key);

  @override
  State<NEFTAccountAddScreen> createState() => _NEFTAccountAddScreenState();
}

class _NEFTAccountAddScreenState extends State<NEFTAccountAddScreen> {
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
                height: SizeConfig.safeUsedHeight *.88,
                child: Column(
                  children: [
                    getAllFormData(SizeConfig.screenHeight, SizeConfig.screenWidth),
                    getAvailableBalance(SizeConfig.screenHeight, SizeConfig.screenWidth),
                  ],
                ),
              ),

            ],
          ),
          GestureDetector(
            onDoubleTap: (){},
            onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>BankSelectionScreen()));
            },
            child: Container(
              height: SizeConfig.screenHeight*0.05,
              color: CommonColor.SIM_VERIFY_COLOR.withOpacity(0.5),
              child:  Center(
                child: Text("Proceed To Pay",
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
            child: Text("NEFT",
              style: TextStyle(
                  fontSize: SizeConfig.blockSizeHorizontal*6.0,
                  fontFamily: "Roboto_Medium",
                  fontWeight: FontWeight.w500,
                  color: CommonColor.BLACK_COLOR
              ),),
          ),
          const Icon(Icons.add_circle_outline_rounded,
            color: Colors.transparent,)
        ],
      ),
    );
  }

  Widget getAllFormData(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(top: parentHeight*0.03, left: parentWidth*0.03, right: parentWidth*0.03),
      child: Container(
        height: parentHeight*0.65,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [


            Container(
              height: parentHeight*0.12,
              decoration: DottedDecoration(
                color: Colors.black26,
                strokeWidth: 0.5,
                linePosition: LinePosition.bottom,
              ),
              child: Padding(
                padding: EdgeInsets.only(top: parentHeight*0.01,
                left: parentWidth*0.03,
                  right: parentWidth*0.03
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      children: [
                        Container(
                          height: parentHeight*0.08,
                          width: parentWidth*0.18,
                          decoration: BoxDecoration(
                            color: CommonColor.BANK_CARD_BACKGROUND_COLOR,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: parentWidth*0.03),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Select Bank",
                                style: TextStyle(
                                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                    fontFamily: "Roboto_Regular",
                                    fontWeight: FontWeight.w400,
                                    color: CommonColor.BLACK_COLOR
                                ),),
                              Padding(
                                padding: EdgeInsets.only(top: parentHeight*0.01),
                                child: Text("HDFC Bank",
                                  style: TextStyle(
                                      fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                      fontFamily: "Roboto_Medium",
                                      fontWeight: FontWeight.w500,
                                      color: CommonColor.BLACK_COLOR
                                  ),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),


                    Padding(
                      padding: EdgeInsets.only(right: parentWidth*0.03, bottom: parentHeight*0.03),
                      child: Icon(
                        Icons.edit
                      ),
                    ),


                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only( left: parentWidth*0.05, right: parentWidth*0.1, top: parentHeight*0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    // controller: userName,
                    decoration: InputDecoration(
                      hintText: 'Account Number',
                      hintStyle: TextStyle(
                          fontSize: SizeConfig.blockSizeHorizontal*4.0,
                          fontFamily: "Roboto_Regular",
                          fontWeight: FontWeight.w400,
                          color: Colors.black26
                      ),
                    ),
                    keyboardType: TextInputType.text,

                  ),
                  Padding(
                    padding: EdgeInsets.only(top: parentHeight*0.01),
                    child: Text("Please Confirm the Account Number to Proceed.",
                      style: TextStyle(
                          fontSize: SizeConfig.blockSizeHorizontal*3.0,
                          fontFamily: "Roboto_Regular",
                          fontWeight: FontWeight.w400,
                          color: CommonColor.BLACK_COLOR
                      ),),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only( left: parentWidth*0.05, right: parentWidth*0.1, top: parentHeight*0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    // controller: userName,
                    decoration: InputDecoration(
                      hintText: 'IFSC Code',
                      hintStyle: TextStyle(
                          fontSize: SizeConfig.blockSizeHorizontal*4.0,
                          fontFamily: "Roboto_Regular",
                          fontWeight: FontWeight.w400,
                          color: Colors.black26
                      ),
                    ),
                    keyboardType: TextInputType.text,

                  ),
                  Padding(
                    padding: EdgeInsets.only(top: parentHeight*0.01),
                    child: Text("Automatically selected for this bank account",
                      style: TextStyle(
                          fontSize: SizeConfig.blockSizeHorizontal*3.0,
                          fontFamily: "Roboto_Regular",
                          fontWeight: FontWeight.w400,
                          color: CommonColor.BLACK_COLOR
                      ),),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only( left: parentWidth*0.05, right: parentWidth*0.1, top: parentHeight*0.02),
              child: TextFormField(
                // controller: userName,
                decoration: InputDecoration(
                  hintText: 'Branch Name',
                  hintStyle: TextStyle(
                      fontSize: SizeConfig.blockSizeHorizontal*4.0,
                      fontFamily: "Roboto_Regular",
                      fontWeight: FontWeight.w400,
                      color: Colors.black26
                  ),
                ),
                keyboardType: TextInputType.text,

              ),
            ),

            Padding(
              padding: EdgeInsets.only( left: parentWidth*0.05, right: parentWidth*0.1, top: parentHeight*0.02),
              child: TextFormField(
                // controller: userName,
                decoration: InputDecoration(
                  hintText: 'Payee Account Name',
                  hintStyle: TextStyle(
                      fontSize: SizeConfig.blockSizeHorizontal*4.0,
                      fontFamily: "Roboto_Regular",
                      fontWeight: FontWeight.w400,
                      color: Colors.black26
                  ),
                ),
                keyboardType: TextInputType.text,

              ),
            ),

            Padding(
              padding: EdgeInsets.only( left: parentWidth*0.05, right: parentWidth*0.1, top: parentHeight*0.02),
              child: TextFormField(
                // controller: userName,
                decoration: InputDecoration(
                  hintText: 'Amount',
                  hintStyle: TextStyle(
                      fontSize: SizeConfig.blockSizeHorizontal*4.0,
                      fontFamily: "Roboto_Regular",
                      fontWeight: FontWeight.w400,
                      color: Colors.black26
                  ),
                ),
                keyboardType: TextInputType.number,

              ),
            ),

            Padding(
              padding: EdgeInsets.only( left: parentWidth*0.05, right: parentWidth*0.1, top: parentHeight*0.02),
              child: TextFormField(
                // controller: userName,
                decoration: InputDecoration(
                  hintText: 'From',
                  hintStyle: TextStyle(
                      fontSize: SizeConfig.blockSizeHorizontal*4.0,
                      fontFamily: "Roboto_Regular",
                      fontWeight: FontWeight.w400,
                      color: Colors.black26
                  ),
                ),
                keyboardType: TextInputType.number,

              ),
            ),

            // Padding(
            //   padding: EdgeInsets.only(top: parentHeight*0.02),
            //   child: Container(
            //     height: parentWidth*0.003,
            //     color: CommonColor.TRANSFER_OPTION_BACKGROUND,
            //     child: Row(
            //       children: const [
            //         Text("hii",
            //           style: TextStyle(
            //               color: Colors.transparent
            //           ),),
            //       ],
            //     ),
            //   ),
            // ),


          ],
        ),
      ),
    );
  }

  Widget getAvailableBalance(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(top: parentHeight*0.02, left: parentWidth*0.03, right: parentWidth*0.03),
      child: Container(
        height: parentHeight*0.065,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Padding(
                padding: EdgeInsets.only(left: parentWidth*0.05),
                child: Text("Available Balance",
                  style: TextStyle(
                      fontSize: SizeConfig.blockSizeHorizontal*4.0,
                      fontFamily: "Roboto_Medium",
                      fontWeight: FontWeight.w500,
                      color: CommonColor.BLACK_COLOR
                  ),),
              ),
            Padding(
              padding: EdgeInsets.only(right: parentWidth*0.05),
              child: Text("INR 510.00",
                style: TextStyle(
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: "Roboto_Bold",
                    fontWeight: FontWeight.w500,
                    color: CommonColor.BLACK_COLOR
                ),),
            ),

          ],
        ),
      ),
    );
  }
}
