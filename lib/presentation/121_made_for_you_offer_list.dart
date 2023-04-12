import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/select_recharge_plan_info_screen.dart';





class MadeForYouOffers extends StatefulWidget {
  const MadeForYouOffers({Key? key}) : super(key: key);

  @override
  State<MadeForYouOffers> createState() => _MadeForYouOffersState();
}

class _MadeForYouOffersState extends State<MadeForYouOffers> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        height: SizeConfig.screenHeight*0.6,
        color: CommonColor.LAYOUT_BACKGROUND_COLOR,
        child: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: 1,
                      (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.05,
                        right: SizeConfig.screenWidth*0.05,
                        top: SizeConfig.screenHeight*0.03,),
                      child: GestureDetector(
                        onDoubleTap: (){},
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectRechargePlanInfo()));
                        },
                        child: Container(
                          height: SizeConfig.screenHeight*0.14,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: SizeConfig.screenHeight*0.14,
                                  decoration: BoxDecoration(
                                    color: CommonColor.WELCOME_TEXT_COLOR,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                  ),
                                  child: Text("H",
                                  style: TextStyle(
                                    color: Colors.transparent
                                  ),),
                                ),
                                Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Padding(
                                          padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.045, top: SizeConfig.screenHeight*0.015),
                                          child: Container(
                                            height: SizeConfig.screenHeight*0.027,
                                            width: SizeConfig.screenWidth*0.25,
                                            decoration: BoxDecoration(
                                              color: CommonColor.WELCOME_TEXT_COLOR,
                                              borderRadius: BorderRadius.circular(20)
                                            ),
                                            child: Center(
                                              child: Text("Disney + Hotstar",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: SizeConfig.blockSizeHorizontal*3.0,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'Roboto_Regular'
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.05, top: SizeConfig.screenHeight*0.01),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("\u{20B9} 722/-",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: SizeConfig.blockSizeHorizontal*6.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'Roboto_Bold  '
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.05, top: SizeConfig.screenHeight*0.005),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                color: Colors.transparent,
                                                width: SizeConfig.screenWidth*0.8,
                                                child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.",
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: SizeConfig.blockSizeHorizontal*2.2,
                                                      fontWeight: FontWeight.w400,
                                                      fontFamily: 'Roboto_Regular'
                                                  ),
                                                  maxLines: 3,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.025, right: SizeConfig.screenWidth*0.03),
                                      child: Icon(Icons.arrow_forward_ios),
                                    )
                                  ],
                                )
                              ],
                            )
                        ),
                      ),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
