import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/upi_pin_confirm_screen.dart';





class RechargePayAmountDialog extends StatefulWidget {
  const RechargePayAmountDialog({Key? key}) : super(key: key);

  @override
  State<RechargePayAmountDialog> createState() => _RechargePayAmountDialogState();
}

class _RechargePayAmountDialogState extends State<RechargePayAmountDialog> {


  bool showCoupon = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.screenHeight * 0.45,
      color: Colors.transparent,
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            )),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.05),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.05,
                      right: SizeConfig.screenWidth*0.1,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Payable",
                          style: TextStyle(
                              fontSize: SizeConfig.blockSizeHorizontal*5.0,
                              fontFamily: "Roboto_Medium",
                              fontWeight: FontWeight.w500,
                              color: CommonColor.BLACK_COLOR
                          ),),
                        Text("\u{20B9} 722/-",
                          style: TextStyle(
                              fontSize: SizeConfig.blockSizeHorizontal*6.0,
                              fontFamily: "Roboto_Bold",
                              fontWeight: FontWeight.w700,
                              color: CommonColor.BLACK_COLOR
                          ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.05,
                        right: SizeConfig.screenWidth*0.1,
                        top: SizeConfig.screenHeight*0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Recharge Amount",
                          style: TextStyle(
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontFamily: "Roboto_Medium",
                              fontWeight: FontWeight.w500,
                              color: Colors.black38
                          ),),
                        Text("Rs 719",
                          style: TextStyle(
                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                              fontFamily: "Roboto_Medium",
                              fontWeight: FontWeight.w500,
                              color: Colors.black38
                          ),),
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
                    padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.02,
                        left: SizeConfig.screenWidth*0.05, right: SizeConfig.screenWidth*0.05),
                    child: Container(
                      height: SizeConfig.screenHeight*0.09,
                      decoration: BoxDecoration(
                          color: CommonColor.APP_BAR_COLOR,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: SizeConfig.screenHeight*0.04,
                              width: SizeConfig.screenWidth*0.09,
                              decoration: const BoxDecoration(
                                color: CommonColor.BANK_CARD_BACKGROUND_COLOR,
                                shape: BoxShape.circle,
                              ),
                              child: const Image(image: AssetImage("assets/images/contact_profile.png"),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03, top: SizeConfig.screenHeight*0.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    color: Colors.transparent,
                                    width: SizeConfig.screenWidth*0.7,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          color: Colors.transparent,
                                          width: SizeConfig.screenWidth*0.52,
                                          child: Text("Arambha Nidhi- XX47",
                                            style: TextStyle(
                                                fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                                fontFamily: "Roboto_Medium",
                                                fontWeight: FontWeight.w500,
                                                color: CommonColor.BLACK_COLOR
                                            ),),
                                        ),
                                        Text("Rs 722",
                                          style: TextStyle(
                                              fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                              fontFamily: "Roboto_Medium",
                                              fontWeight: FontWeight.w500,
                                              color: CommonColor.BLACK_COLOR
                                          ),),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.01),
                                    child:  Container(
                                      color: Colors.transparent,
                                      width: SizeConfig.screenWidth*0.6,
                                      child: Text("Bank Account",
                                        style: TextStyle(
                                            fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                            fontFamily: "Roboto_Regular",
                                            fontWeight: FontWeight.w400,
                                            color: CommonColor.BLACK_COLOR
                                        ),),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  showCoupon == true ?
                  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03,
                        left: SizeConfig.screenWidth*0.05, right: SizeConfig.screenWidth*0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: SizeConfig.screenWidth*0.65,
                          height: SizeConfig.screenHeight*0.045,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                              border: Border.all(color: CommonColor.WELCOME_TEXT_COLOR)
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(bottom: SizeConfig.screenHeight*0.012),
                                hintText: "Place your Coupon Code Here",
                                hintStyle: TextStyle(
                                    fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                    fontFamily: "Roboto_Regular",
                                    fontWeight: FontWeight.w400,
                                    color: CommonColor.PAYMENT_SETTING_COLOR.withOpacity(0.3)
                                ),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide.none
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide.none
                                )
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          width: SizeConfig.screenWidth*0.2,
                          height: SizeConfig.screenHeight*0.03,
                          decoration: BoxDecoration(
                              color: CommonColor.WELCOME_TEXT_COLOR,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Text("Apply",
                              style: TextStyle(
                                  fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                  fontFamily: "Roboto_Bold",
                                  fontWeight: FontWeight.w500,
                                  color: CommonColor.WHITE_COLOR
                              ),),
                          ),
                        ),
                      ],
                    ),
                  ) :
                  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03, right: SizeConfig.screenWidth*0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onDoubleTap: (){},
                          onTap: (){
                            if(mounted){
                              setState(() {
                                showCoupon = !showCoupon;
                              });
                            }
                          },
                          child: Container(
                            color: Colors.transparent,
                            child: Text(
                                "Add Coupon Code",
                                style: TextStyle(
                                    fontSize:
                                    SizeConfig.blockSizeHorizontal * 3.0,
                                    fontWeight: FontWeight.w400,
                                    color: CommonColor.WELCOME_TEXT_COLOR,
                                    fontFamily: 'Roboto_Regular')
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03),
                    child: GestureDetector(
                      onDoubleTap: (){},
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>UpiPinConfirmScreen(comesFrom: '3',)));
                      },
                      child: Container(
                        width: SizeConfig.screenWidth*0.8,
                        height: SizeConfig.screenHeight*0.055,
                        decoration: BoxDecoration(
                            color: CommonColor.WELCOME_TEXT_COLOR,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: Text("Pay",
                            style: TextStyle(
                                fontSize: SizeConfig.blockSizeHorizontal*5.0,
                                fontFamily: "Roboto_Bold",
                                fontWeight: FontWeight.w500,
                                color: CommonColor.WHITE_COLOR
                            ),),
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
                    child: Icon(Icons.clear)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
