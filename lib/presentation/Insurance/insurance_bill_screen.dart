import 'package:flutter/material.dart';
import 'package:scspay/all_dialog/gas_bill_pay_dialog.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';



class InsuranceBillScreen extends StatefulWidget {

  const InsuranceBillScreen({Key? key}) : super(key: key);

  @override
  State<InsuranceBillScreen> createState() => _InsuranceBillScreenState();
}

class _InsuranceBillScreenState extends State<InsuranceBillScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
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
                  padding: EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.1),
                  children: [
                    getAllBillDetails(SizeConfig.screenHeight, SizeConfig.screenWidth)
                  ],
                ),
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
                      child: GasBillAmountDialog(),
                    );
                  });
            },
            child: Container(
              height: SizeConfig.screenHeight*0.05,
              color: CommonColor.SIM_VERIFY_COLOR.withOpacity(0.5),
              child:  Center(
                child: Text("Continue",
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
            child: Text("Insurance Bill",
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

  Widget getAllBillDetails(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(top: parentHeight*0.03, left: parentWidth*0.05, right: parentWidth*0.05),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: EdgeInsets.only(left: parentWidth*0.05, right: parentWidth*0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.screenHeight*0.02,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Container(
                      height: SizeConfig.screenHeight*0.038,
                      width: SizeConfig.screenWidth*0.08,
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

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Padding(
                          padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03,),
                          child: Container(
                            width: SizeConfig.screenWidth*0.65,
                            color: Colors.transparent,
                            child: Text(
                                "Policy Number",
                                style: TextStyle(
                                    fontSize:
                                    SizeConfig.blockSizeHorizontal * 4.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: 'Roboto_Medium')
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03,top: parentHeight*0.005),
                          child: Container(
                            width: SizeConfig.screenWidth*0.65,
                            color: Colors.transparent,
                            child: Text(
                                "258427918",
                                style: TextStyle(
                                    fontSize:
                                    SizeConfig.blockSizeHorizontal * 4.0,
                                    fontWeight: FontWeight.w400,
                                    color: CommonColor.PAYMENT_SETTING_COLOR.withOpacity(0.6),
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
                padding: EdgeInsets.only(top: parentHeight*0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                        "Bill Details",
                        style: TextStyle(
                            fontSize:
                            SizeConfig.blockSizeHorizontal * 4.0,
                            fontWeight: FontWeight.w500,
                            color: CommonColor.BLACK_COLOR,
                            fontFamily: 'Roboto_Medium')
                    ),

                    Text(
                        "Hide",
                        style: TextStyle(
                            fontSize:
                            SizeConfig.blockSizeHorizontal * 4.0,
                            fontWeight: FontWeight.w500,
                            color: CommonColor.WELCOME_TEXT_COLOR,
                            fontFamily: 'Roboto_Medium')
                    ),

                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: parentHeight*0.02, right: parentWidth*0.0),
                child: Container(
                  color: Colors.transparent,
                  width: parentWidth*0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text(
                          "Customer Name",
                          style: TextStyle(
                              fontSize:
                              SizeConfig.blockSizeHorizontal * 4.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black26,
                              fontFamily: 'Roboto_Medium')
                      ),

                      Container(
                        color: Colors.transparent,
                        width: parentWidth*0.45,
                        child: Text(
                            ": Sarthak Pratap Jadhav",
                            style: TextStyle(
                                fontSize:
                                SizeConfig.blockSizeHorizontal * 3.5,
                                fontWeight: FontWeight.w400,
                                color: Colors.black26,
                                fontFamily: 'Roboto_Regular')
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: parentHeight*0.02, right: parentWidth*0.0),
                child: Container(
                  color: Colors.transparent,
                  width: parentWidth*0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text(
                          "Policy Number",
                          style: TextStyle(
                              fontSize:
                              SizeConfig.blockSizeHorizontal * 4.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black26,
                              fontFamily: 'Roboto_Medium')
                      ),

                      Container(
                        color: Colors.transparent,
                        width: parentWidth*0.45,
                        child: Text(
                            ": 258427918",
                            style: TextStyle(
                                fontSize:
                                SizeConfig.blockSizeHorizontal * 3.5,
                                fontWeight: FontWeight.w400,
                                color: Colors.black26,
                                fontFamily: 'Roboto_Regular')
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: parentHeight*0.02, right: parentWidth*0.0),
                child: Container(
                  color: Colors.transparent,
                  width: parentWidth*0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text(
                          "Due From - Due To",
                          style: TextStyle(
                              fontSize:
                              SizeConfig.blockSizeHorizontal * 4.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black26,
                              fontFamily: 'Roboto_Medium')
                      ),

                      Container(
                        color: Colors.transparent,
                        width: parentWidth*0.45,
                        child: Text(
                            ": 28/11/2022 - 28/11/2022",
                            style: TextStyle(
                                fontSize:
                                SizeConfig.blockSizeHorizontal * 3.5,
                                fontWeight: FontWeight.w400,
                                color: Colors.black26,
                                fontFamily: 'Roboto_Regular')
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: parentHeight*0.02),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black12)
                  ),
                  child: Column(
                    children: [

                      Padding(
                        padding: EdgeInsets.only(top: parentHeight*0.01, left: parentWidth*0.05),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                                "Rs.1100",
                                style: TextStyle(
                                    fontSize:
                                    SizeConfig.blockSizeHorizontal * 7.0,
                                    fontWeight: FontWeight.w500,
                                    color: CommonColor.BLACK_COLOR,
                                    fontFamily: 'Roboto_Bold')
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: parentHeight*0.01,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: parentHeight*0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                        "One Thousand One Hundred Only",
                        style: TextStyle(
                            fontSize:
                            SizeConfig.blockSizeHorizontal * 4.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black26,
                            fontFamily: 'Roboto_Medium')
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: parentHeight*0.02,
              )
            ],
          ),
        ),
      ),
    );
  }
}
