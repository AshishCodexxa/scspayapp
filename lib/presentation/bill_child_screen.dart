import 'package:flutter/material.dart';
import 'package:scspay/all_dialog/recharge_bill_dialog.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/add_bill_account_screen.dart';



class BillScreen extends StatefulWidget {

  final BillScreenInterface mListener;

  const BillScreen({Key? key, required this.mListener}) : super(key: key);

  @override
  State<BillScreen> createState() => _BillScreenState();
}

class _BillScreenState extends State<BillScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: CommonColor.LAYOUT_BACKGROUND_COLOR,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(bottom: SizeConfig.screenHeight*0.1),
            children: [

              Container(
                height: SizeConfig.screenHeight*0.2,
                color: CommonColor.PLEASE_NOTE_COLOR,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.2, right: SizeConfig.screenWidth*0.2),
                    child: Text(
                      "Manage Bill Payments, Recharges & Much More",
                      style: TextStyle(
                          fontSize:
                          SizeConfig.blockSizeHorizontal * 5.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontFamily: 'Roboto_Bold'),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03,
                    left: SizeConfig.screenWidth*0.05,
                    right: SizeConfig.screenWidth*0.05),
                child: Container(
                  height: SizeConfig.screenHeight*0.31,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03,
                                left: SizeConfig.screenWidth*0.05),
                            child: Row(
                              children: [

                                Text(
                                  "Upcoming Bills (1)",
                                  style: TextStyle(
                                      fontSize:
                                      SizeConfig.blockSizeHorizontal * 5.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                      fontFamily: 'Roboto_Bold'),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: SizeConfig.screenHeight*0.02,
                            top: SizeConfig.screenHeight*0.02),
                        child: Container(
                          width: SizeConfig.screenWidth*0.78,
                          decoration: BoxDecoration(
                              color: CommonColor.WHITE_COLOR,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black26)
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.05,
                                right: SizeConfig.screenWidth*0.05,
                                top: SizeConfig.screenHeight*0.015),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: SizeConfig.screenHeight*0.05,
                                          width: SizeConfig.screenWidth*0.1,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image(image: AssetImage("assets/images/contact_profile.png"),
                                            fit: BoxFit.contain,),
                                        ),
                                        Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.025,
                                                  right: SizeConfig.screenWidth*0.025,
                                                  top: SizeConfig.screenHeight*0.005
                                              ),
                                              child: Container(
                                                width: SizeConfig.screenWidth*0.42,
                                                color: Colors.transparent,
                                                child: Text("Nikita Mahindrakar",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: 'Roboto_Regular'
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.025,
                                                  right: SizeConfig.screenWidth*0.025,
                                                  top: SizeConfig.screenHeight*0.007
                                              ),
                                              child: Container(
                                                width: SizeConfig.screenWidth*0.4,
                                                color: Colors.transparent,
                                                child: Text("8569472634",
                                                  style: TextStyle(
                                                      color: CommonColor.PAYMENT_SETTING_COLOR,
                                                      fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: 'Roboto_Regular'
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
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
                                                child: RechargeBillOptionDialog(),
                                              );
                                            });
                                      },
                                      child: Container(
                                          color: Colors.transparent,
                                          child: Icon(Icons.more_vert)
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.02),
                                  child: Container(
                                    height: SizeConfig.screenWidth*0.003,
                                    width: SizeConfig.screenWidth*0.7,
                                    color: Colors.black26,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: const [
                                        Text("hi",
                                          style: TextStyle(
                                              color: Colors.transparent
                                          ),),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.01),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Image(image: AssetImage("assets/images/upcoming.png"),),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: SizeConfig.screenWidth*0.02
                                                ),
                                                child: Container(
                                                  width: SizeConfig.screenWidth*0.34,
                                                  color: Colors.transparent,
                                                  child: Text("Rs. 232 due on 29 Mar. 2023",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: SizeConfig.blockSizeHorizontal*2.5,
                                                        fontWeight: FontWeight.w400,
                                                        fontFamily: 'Roboto_Regular'
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),

                                      Container(
                                        height: SizeConfig.screenHeight*0.033,
                                        width: SizeConfig.screenWidth*0.24,
                                        decoration: BoxDecoration(
                                          color: CommonColor.WELCOME_TEXT_COLOR,
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child:  Center(
                                          child: Text(
                                            "Pay Now",
                                            style: TextStyle(
                                                fontSize:
                                                SizeConfig.blockSizeHorizontal * 4.0,
                                                fontWeight: FontWeight.w500,
                                                color: CommonColor.WHITE_COLOR,
                                                fontFamily: 'Roboto_Regular'),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.screenHeight*0.01,
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03),
                child: Container(
                  height: SizeConfig.screenHeight*0.1,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03),
                    child: Row(
                      children: [

                        Image(image: AssetImage("assets/images/bill_setting.png"),),

                        Padding(
                          padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Accounts",
                                style: TextStyle(
                                    fontSize:
                                    SizeConfig.blockSizeHorizontal * 5.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: 'Roboto_Bold'),
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.007),
                                child: Text(
                                  "Manage your Recharge and Bill Accounts here",
                                  style: TextStyle(
                                      fontSize:
                                      SizeConfig.blockSizeHorizontal * 3.5,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontFamily: 'Roboto_Regular'),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03,
                left: SizeConfig.screenWidth*0.05,
                right: SizeConfig.screenWidth*0.05),
                child: Container(
                  height: SizeConfig.screenHeight*0.31,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03,
                            left: SizeConfig.screenWidth*0.05),
                            child: Row(
                              children: [

                                Image(image: AssetImage("assets/images/mobile_big.png")),

                                Padding(
                                  padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.02),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Mobile Recharge",
                                        style: TextStyle(
                                            fontSize:
                                            SizeConfig.blockSizeHorizontal * 5.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontFamily: 'Roboto_Bold'),
                                        textAlign: TextAlign.center,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.007),
                                        child: Text(
                                          "2 accounts added",
                                          style: TextStyle(
                                              fontSize:
                                              SizeConfig.blockSizeHorizontal * 3.5,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black,
                                              fontFamily: 'Roboto_Regular'),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03,
                                right: SizeConfig.screenWidth*0.05),
                            child: Row(
                              children: [
                                Icon(Icons.add,
                                  color: CommonColor.WELCOME_TEXT_COLOR,),
                                Padding(
                                  padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.01),
                                  child: Text(
                                    "New",
                                    style: TextStyle(
                                        fontSize:
                                        SizeConfig.blockSizeHorizontal * 4.5,
                                        fontWeight: FontWeight.w500,
                                        color: CommonColor.WELCOME_TEXT_COLOR,
                                        fontFamily: 'Roboto_Regular'),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.transparent,
                        height: SizeConfig.screenHeight*0.2,
                        child: ListView.builder(
                            itemCount: 2,
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.zero,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03,
                                    bottom: SizeConfig.screenHeight*0.02,
                                top: SizeConfig.screenHeight*0.02),
                                child: Container(
                                  width: SizeConfig.screenWidth*0.75,
                                  decoration: BoxDecoration(
                                      color: CommonColor.WHITE_COLOR,
                                      borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.black26)
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.05,
                                        right: SizeConfig.screenWidth*0.05,
                                    top: SizeConfig.screenHeight*0.015),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: SizeConfig.screenHeight*0.05,
                                                  width: SizeConfig.screenWidth*0.1,
                                                  decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image(image: AssetImage("assets/images/contact_profile.png"),
                                                    fit: BoxFit.contain,),
                                                ),
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.025,
                                                          right: SizeConfig.screenWidth*0.025,
                                                          top: SizeConfig.screenHeight*0.005
                                                      ),
                                                      child: Container(
                                                        width: SizeConfig.screenWidth*0.42,
                                                        color: Colors.transparent,
                                                        child: Text("Nikita Mahindrakar",
                                                          style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                                              fontWeight: FontWeight.w400,
                                                              fontFamily: 'Roboto_Regular'
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.025,
                                                          right: SizeConfig.screenWidth*0.025,
                                                          top: SizeConfig.screenHeight*0.007
                                                      ),
                                                      child: Container(
                                                        width: SizeConfig.screenWidth*0.4,
                                                        color: Colors.transparent,
                                                        child: Text("8569472634",
                                                          style: TextStyle(
                                                              color: CommonColor.PAYMENT_SETTING_COLOR,
                                                              fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                                              fontWeight: FontWeight.w400,
                                                              fontFamily: 'Roboto_Regular'
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
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
                                                        child: RechargeBillOptionDialog(),
                                                      );
                                                    });
                                              },
                                              child: Container(
                                                color: Colors.transparent,
                                                  child: Icon(Icons.more_vert)
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.02),
                                          child: Container(
                                            height: SizeConfig.screenWidth*0.003,
                                            width: SizeConfig.screenWidth*0.7,
                                            color: Colors.black26,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: const [
                                                Text("hi",
                                                  style: TextStyle(
                                                      color: Colors.transparent
                                                  ),),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.015),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                height: SizeConfig.screenHeight*0.035,
                                                width: SizeConfig.screenWidth*0.25,
                                                decoration: BoxDecoration(
                                                  color: CommonColor.WELCOME_TEXT_COLOR,
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                child:  Center(
                                                  child: Text(
                                                    "Recharge ",
                                                    style: TextStyle(
                                                        fontSize:
                                                        SizeConfig.blockSizeHorizontal * 4.0,
                                                        fontWeight: FontWeight.w500,
                                                        color: CommonColor.WHITE_COLOR,
                                                        fontFamily: 'Roboto_Regular'),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03,
                    left: SizeConfig.screenWidth*0.05,
                    right: SizeConfig.screenWidth*0.05),
                child: Container(
                  height: SizeConfig.screenHeight*0.31,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03,
                                left: SizeConfig.screenWidth*0.05),
                            child: Row(
                              children: [

                                Image(image: AssetImage("assets/images/mobile_big.png")),

                                Padding(
                                  padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.02),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "D2H",
                                        style: TextStyle(
                                            fontSize:
                                            SizeConfig.blockSizeHorizontal * 5.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontFamily: 'Roboto_Bold'),
                                        textAlign: TextAlign.center,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.007),
                                        child: Text(
                                          "2 accounts added",
                                          style: TextStyle(
                                              fontSize:
                                              SizeConfig.blockSizeHorizontal * 3.5,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black,
                                              fontFamily: 'Roboto_Regular'),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03,
                                right: SizeConfig.screenWidth*0.05),
                            child: Row(
                              children: [
                                Icon(Icons.add,
                                  color: CommonColor.WELCOME_TEXT_COLOR,),
                                Padding(
                                  padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.01),
                                  child: Text(
                                    "New",
                                    style: TextStyle(
                                        fontSize:
                                        SizeConfig.blockSizeHorizontal * 4.5,
                                        fontWeight: FontWeight.w500,
                                        color: CommonColor.WELCOME_TEXT_COLOR,
                                        fontFamily: 'Roboto_Regular'),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        color: Colors.transparent,
                        height: SizeConfig.screenHeight*0.2,
                        child: ListView.builder(
                            itemCount: 2,
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.zero,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03,
                                    bottom: SizeConfig.screenHeight*0.02,
                                    top: SizeConfig.screenHeight*0.02),
                                child: Container(
                                  width: SizeConfig.screenWidth*0.75,
                                  decoration: BoxDecoration(
                                      color: CommonColor.WHITE_COLOR,
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.black26)
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.05,
                                        right: SizeConfig.screenWidth*0.05,
                                        top: SizeConfig.screenHeight*0.015),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: SizeConfig.screenHeight*0.05,
                                                  width: SizeConfig.screenWidth*0.1,
                                                  decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image(image: AssetImage("assets/images/contact_profile.png"),
                                                    fit: BoxFit.contain,),
                                                ),
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.025,
                                                          right: SizeConfig.screenWidth*0.025,
                                                          top: SizeConfig.screenHeight*0.005
                                                      ),
                                                      child: Container(
                                                        width: SizeConfig.screenWidth*0.42,
                                                        color: Colors.transparent,
                                                        child: Text("Dish TV",
                                                          style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                                              fontWeight: FontWeight.w400,
                                                              fontFamily: 'Roboto_Regular'
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.025,
                                                          right: SizeConfig.screenWidth*0.025,
                                                          top: SizeConfig.screenHeight*0.007
                                                      ),
                                                      child: Container(
                                                        width: SizeConfig.screenWidth*0.4,
                                                        color: Colors.transparent,
                                                        child: Text("0158624789654",
                                                          style: TextStyle(
                                                              color: CommonColor.PAYMENT_SETTING_COLOR,
                                                              fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                                              fontWeight: FontWeight.w400,
                                                              fontFamily: 'Roboto_Regular'
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Icon(Icons.more_vert)
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.02),
                                          child: Container(
                                            height: SizeConfig.screenWidth*0.003,
                                            width: SizeConfig.screenWidth*0.7,
                                            color: Colors.black26,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: const [
                                                Text("hi",
                                                  style: TextStyle(
                                                      color: Colors.transparent
                                                  ),),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.01),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [

                                              Column(
                                                children: [
                                                  Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsets.only(
                                                            top: SizeConfig.screenHeight*0.005
                                                        ),
                                                        child: Container(
                                                          width: SizeConfig.screenWidth*0.34,
                                                          color: Colors.transparent,
                                                          child: Text("Dish TV",
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: SizeConfig.blockSizeHorizontal*3.5,
                                                                fontWeight: FontWeight.w400,
                                                                fontFamily: 'Roboto_Regular'
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.only(
                                                            top: SizeConfig.screenHeight*0.007
                                                        ),
                                                        child: Container(
                                                          width: SizeConfig.screenWidth*0.34,
                                                          color: Colors.transparent,
                                                          child: Text("0158624789654",
                                                            style: TextStyle(
                                                                color: CommonColor.PAYMENT_SETTING_COLOR,
                                                                fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                                                fontWeight: FontWeight.w400,
                                                                fontFamily: 'Roboto_Regular'
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),

                                              Container(
                                                height: SizeConfig.screenHeight*0.035,
                                                width: SizeConfig.screenWidth*0.25,
                                                decoration: BoxDecoration(
                                                  color: CommonColor.WELCOME_TEXT_COLOR,
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                child:  Center(
                                                  child: Text(
                                                    "Pay Now",
                                                    style: TextStyle(
                                                        fontSize:
                                                        SizeConfig.blockSizeHorizontal * 4.0,
                                                        fontWeight: FontWeight.w500,
                                                        color: CommonColor.WHITE_COLOR,
                                                        fontFamily: 'Roboto_Regular'),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }
                        ),
                      ),
                    ],
                  ),
                ),
              )


            ],
          ),
          GestureDetector(
            onDoubleTap: (){},
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>AllBillAccounts()));
            },
            child: Container(
              height: SizeConfig.screenHeight*0.07,
              color: CommonColor.SIM_VERIFY_COLOR,
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Add Account",
                        style: TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal*5.0,
                            fontFamily: "Roboto_Medium",
                            fontWeight: FontWeight.w500,
                            color: CommonColor.WHITE_COLOR
                        ),),
                    ],
                  ),
                  Text("Mobile Recharge, Electricity, DTH & Many More",
                    style: TextStyle(
                        fontSize: SizeConfig.blockSizeHorizontal*2.5,
                        fontFamily: "Roboto_Medium",
                        fontWeight: FontWeight.w500,
                        color: CommonColor.WHITE_COLOR
                    ),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

abstract class BillScreenInterface{

}