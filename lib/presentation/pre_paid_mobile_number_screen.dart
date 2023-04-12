import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/chat_module/chat_room.dart';
import 'package:scspay/presentation/view_select_number_recharge_plan.dart';




class PrepaidMobileNumberScreen extends StatefulWidget {
  const PrepaidMobileNumberScreen({Key? key}) : super(key: key);

  @override
  State<PrepaidMobileNumberScreen> createState() => _PrepaidMobileNumberScreen();
}

class _PrepaidMobileNumberScreen extends State<PrepaidMobileNumberScreen> {





  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: CommonColor.LAYOUT_BACKGROUND_COLOR,
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: SizeConfig.safeUsedHeight * .88,
            child: CustomScrollView(
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Container(
                        height: SizeConfig.screenHeight*0.24,
                        color: Colors.transparent,
                        child: Column(
                          children: [

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: SizeConfig.screenHeight*0.03,
                                    left: SizeConfig.screenWidth*0.05,
                                  ),
                                  child: Text("Recent",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: SizeConfig.blockSizeHorizontal*5.0,
                                        fontFamily: 'Roboto_Bold',
                                        fontWeight: FontWeight.w500
                                    ),),
                                ),
                              ],
                            ),

                            Container(
                              height: SizeConfig.screenHeight*0.17,
                              child: ListView.builder(
                                  itemCount: 10,
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (BuildContext context, int index) {
                                    return getRecentContactList(SizeConfig.screenHeight, SizeConfig.screenWidth);
                                  }
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.05, right: SizeConfig.screenWidth*0.05),
                        child: Container(
                          height: SizeConfig.screenHeight*0.07,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: SizeConfig.screenWidth*0.051,
                                ),
                                child: Text("All Contact",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: SizeConfig.blockSizeHorizontal*5.0,
                                      fontFamily: 'Roboto_Bold',
                                      fontWeight: FontWeight.w500
                                  ),),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SliverList(
                    delegate: SliverChildBuilderDelegate(
                      childCount: 10,
                          (context, index) {
                        return  Padding(
                          padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.05,
                              right: SizeConfig.screenWidth*0.05),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: getAllContactList(SizeConfig.screenHeight, SizeConfig.screenWidth),
                          ),
                        );
                      },
                    )),
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
                child: Icon(Icons.arrow_back_ios_new)),
          ),
          Padding(
            padding: EdgeInsets.only(left: parentHeight * 0.01),
            child: Text("Phone Number",
              style: TextStyle(
                  fontSize: SizeConfig.blockSizeHorizontal*6.0,
                  fontFamily: "Roboto_Medium",
                  fontWeight: FontWeight.w500,
                  color: CommonColor.BLACK_COLOR
              ),),
          ),
          const Icon(Icons.search_outlined,
            color: Colors.black,)
        ],
      ),
    );
  }

  Widget getRecentContactList(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(top: parentHeight*0.03, left: parentWidth*0.02),
      child: Column(
        children: [
          Container(
            height: parentHeight*0.07,
            width: parentWidth*0.17,
            decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                border: Border.all(color: CommonColor.WELCOME_TEXT_COLOR)
            ),
            child: Container(
              height: parentHeight*0.05,
              width: parentWidth*0.13,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Image(image: AssetImage("assets/images/contact_profile.png"),
                fit: BoxFit.contain,),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: parentWidth*0.025,
                right: parentWidth*0.025,
                top: parentHeight*0.01
            ),
            child: Container(
              width: parentWidth*0.16,
              // color: Colors.blue,
              child: Text("Nikita Mahindrakar",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: SizeConfig.blockSizeHorizontal*2.7,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto_Regular'
                ),textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getAllContactList(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(top: parentHeight*0.02,
          left: parentWidth*0.05),
      child: GestureDetector(
        onDoubleTap: (){},
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MobileRechargePlan()));
        },
        child: Container(
          color: Colors.transparent,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: parentHeight*0.055,
                    width: parentWidth*0.12,
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
                        padding: EdgeInsets.only(left: parentWidth*0.025,
                            right: parentWidth*0.025,
                            top: parentHeight*0.005
                        ),
                        child: Container(
                          width: parentWidth*0.65,
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
                        padding: EdgeInsets.only(left: parentWidth*0.025,
                            right: parentWidth*0.025,
                            top: parentHeight*0.01
                        ),
                        child: Container(
                          width: parentWidth*0.65,
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
              Padding(
                padding: EdgeInsets.only(top: parentHeight*0.02),
                child: Container(
                  height: parentWidth*0.003,
                  width: parentWidth*0.8,
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
            ],
          ),
        ),
      ),
    );
  }
}
