import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/Gas_Cylinder/gas_cylinder_provider_screen.dart';
import 'package:scspay/presentation/Gas_Cylinder/pipeline_gas_booking_child_screen.dart';





class GasCylinderProvider extends StatefulWidget {
  const GasCylinderProvider({Key? key}) : super(key: key);

  @override
  State<GasCylinderProvider> createState() => _GasCylinderProviderState();
}

class _GasCylinderProviderState extends State<GasCylinderProvider>  with SingleTickerProviderStateMixin {


  late TabController _tabController;


  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

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
              color: CommonColor.LAYOUT_BACKGROUND_COLOR,
              height: SizeConfig.safeUsedHeight * .88,
              child: Padding(
                padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.015),
                child: Column(
                  children: [
                    TabBar(
                        controller: _tabController,
                        unselectedLabelColor: CommonColor.PAYMENT_SETTING_COLOR,
                        indicatorSize: TabBarIndicatorSize.label,
                        isScrollable: false,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: CommonColor.WELCOME_TEXT_COLOR),
                        tabs: [
                          Tab(
                            child: Container(
                              height: SizeConfig.screenHeight*0.05,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Colors.black12, width: 1)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Gas Cylender"),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              height: SizeConfig.screenHeight*0.05,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Colors.black12, width: 1)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Pipeline"),
                              ),
                            ),
                          ),
                        ]),

                    Expanded(
                        child: TabBarView(
                            controller: _tabController,
                            children: [
                              GasCylinderChildProvider(),
                              PipeLineGasChildScreen()
                            ])
                    )
                  ],
                ),
              )
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
            child: Text("Notification",
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
}
