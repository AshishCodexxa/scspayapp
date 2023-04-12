import 'package:flutter/material.dart';
import 'package:scspay/all_dialog/recharge_pay_dialogue.dart';
import 'package:scspay/all_dialog/select_operator_dialog.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/121_made_for_you_offer_list.dart';




class MobileRechargePlan extends StatefulWidget {
  const MobileRechargePlan({Key? key}) : super(key: key);

  @override
  State<MobileRechargePlan> createState() => _MobileRechargePlanState();
}

class _MobileRechargePlanState extends State<MobileRechargePlan> {



  TabController? _tabController;

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
            height: SizeConfig.screenHeight*0.88,
            color: Colors.white,
            child:  CustomScrollView(
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      getDetailsLayout(SizeConfig.screenHeight, SizeConfig.screenWidth),
                    ],
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03),
                        child: DefaultTabController(length: 5,
                          child: Column(
                            children: [
                              TabBar(
                                  controller: _tabController,
                                  isScrollable: true,
                                  padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.05, right: SizeConfig.screenWidth*0.05),
                                  indicatorSize: TabBarIndicatorSize.tab,
                                  unselectedLabelColor: Colors.black26,
                                  labelColor: Colors.black,
                                  labelStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Roboto_Medium',
                                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                  ),
                                  unselectedLabelStyle: TextStyle(
                                      fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Roboto_Regular'),
                                  indicator: const BoxDecoration(
                                    // borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),),
                                    border: Border(bottom: BorderSide(color: CommonColor.WELCOME_TEXT_COLOR, width: 5.0, style: BorderStyle.solid)),
                                    color: Colors.transparent,),
                                  tabs: const [
                                    Tab(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          '121 MADE FOR YOU',
                                        ),
                                      ),
                                    ),
                                    Tab(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'HERO UNLIMITED',
                                        ),
                                      ),
                                    ),
                                    Tab(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'DATA',
                                        ),
                                      ),
                                    ),
                                    Tab(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Shipped',
                                        ),
                                      ),
                                    ),
                                    Tab(
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Delivered',
                                        ),
                                      ),
                                    ),

                                  ]),
                              Container(
                                color: Colors.red,
                                height: SizeConfig.screenHeight*0.6,
                                child: TabBarView(
                                  children: <Widget>[
                                    MadeForYouOffers(),
                                    Icon(Icons.add),
                                    Icon(Icons.add),
                                    Icon(Icons.add),
                                    Icon(Icons.add),
                                  ],
                                ),
                              ),

                            ],
                          ),),
                      ),
                    ],
                  ),
                ),
              ],
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
            child: Text("Mobile Recharge",
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

  Widget getDetailsLayout(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(
          top: parentHeight*0.03,
          left: parentWidth*0.05,
          right: parentWidth*0.03
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: parentHeight*0.075,
                width: parentWidth*0.17,
                decoration: BoxDecoration(
                  color: CommonColor.BANK_CARD_BACKGROUND_COLOR,
                  shape: BoxShape.circle,
                ),
                child: Image(image: AssetImage("assets/images/contact_profile.png"),),
              ),
              Padding(
                padding: EdgeInsets.only(left: parentWidth*0.03, top: parentHeight*0.01),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.transparent,
                      width: parentWidth*0.7,
                      child: Text("Nikita Mahendrakar",
                        style: TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal*4.0,
                            fontFamily: "Roboto_Medium",
                            fontWeight: FontWeight.w500,
                            color: CommonColor.BLACK_COLOR
                        ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: parentHeight*0.01),
                      child:  Container(
                        color: Colors.transparent,
                        width: parentWidth*0.7,
                        child: Text("8569472634",
                          style: TextStyle(
                              fontSize: SizeConfig.blockSizeHorizontal*4.0,
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
          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.02),
            child: Container(
              height: parentWidth*0.003,
              color: Colors.black12,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: parentHeight*0.02),
                child: Container(
                  height: parentHeight*0.045,
                  width: parentWidth*0.42,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black26)
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: parentWidth*0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                                    child: SelectYourOperator(),
                                  );
                                });
                          },
                          child: Container(
                            width: parentWidth*0.3,
                            color: Colors.transparent,
                            child: Center(
                              child: Text("Vi Prepaid",
                                style: TextStyle(
                                    fontSize: SizeConfig.blockSizeHorizontal*3.7,
                                    fontFamily: "Roboto_Regular",
                                    fontWeight: FontWeight.w400,
                                    color: CommonColor.BLACK_COLOR
                                ),),
                            ),
                          ),
                        ),

                        Icon(Icons.arrow_drop_down_outlined)
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: parentHeight*0.02),
                child: Container(
                  height: parentHeight*0.045,
                  width: parentWidth*0.42,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.black26)
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: parentWidth*0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: parentWidth*0.3,
                          color: Colors.transparent,
                          child: Center(
                            child: Text("Maharashtra & Goa",
                              style: TextStyle(
                                  fontSize: SizeConfig.blockSizeHorizontal*3.3,
                                  fontFamily: "Roboto_Regular",
                                  fontWeight: FontWeight.w400,
                                  color: CommonColor.BLACK_COLOR
                              ),),
                          ),
                        ),

                        Icon(Icons.arrow_drop_down_outlined)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
