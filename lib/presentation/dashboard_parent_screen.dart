import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/scs_screen_constant.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/bill_child_screen.dart';
import 'package:scspay/presentation/history_child_screen.dart';
import 'package:scspay/presentation/home_child_screen.dart';
import 'package:scspay/presentation/notificaion_screen.dart';
import 'package:scspay/presentation/profile_screen.dart';



class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> implements HomeScreenListener, HistoryScreenInterface,
    BillScreenInterface{


  String currentScreen = "Dashboard";
  Widget? widDashboardScreen, widMenuScreen;
  bool isShow = true;

  @override
  void initState() {
    super.initState();
    addNewScreen(
        HomeScreen(
          mListener: this,
        ),
        ScreenConstant.HOME_PAGE);
  }


  Widget getContainer() {
    return Container(
      child: widDashboardScreen,
    );
  }

  getUpdateParentScreen(Widget showScreen) {
    return setState(() {
      widDashboardScreen = showScreen;
    });
  }

  addNewScreen(Widget newScreen, String currentScreenStatus) {
    currentScreen = currentScreenStatus;
    if (mounted) {
      setState(() {
        widDashboardScreen = newScreen;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Material(
      child: Column(
        children: [
          Visibility(
            visible: isShow,
            child: Container(
              color: CommonColor.APP_BAR_COLOR,
              height: SizeConfig.safeUsedHeight * .12,
              child: getTopText(SizeConfig.screenHeight, SizeConfig.screenWidth),
            ),
          ),
          Container(
            height: SizeConfig.safeUsedHeight * .8,
            child: getContainer(),
          ),
          Container(
            height: SizeConfig.safeUsedHeight * .08,
            decoration:  BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 7,
                    spreadRadius: 3,
                    offset: const Offset(2, 2.0))
              ],
            ),
            child: getBottomBarDesign(
                SizeConfig.screenHeight, SizeConfig.screenWidth),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfileScreen()));
            },
            child: Container(
              color: Colors.transparent,
                child: const Image(image: AssetImage("assets/images/dummy_user.png"))),
          ),
          Padding(
            padding: EdgeInsets.only(left: parentHeight * 0.01),
            child: Text("SCS Pay",
              style: TextStyle(
                  fontSize: SizeConfig.blockSizeHorizontal*7.0,
                  fontFamily: "Roboto_Medium",
                  fontWeight: FontWeight.w500,
                  color: CommonColor.BLACK_COLOR
              ),),
          ),
          GestureDetector(
            onDoubleTap: (){},
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
            },
            child: Container(
              color: Colors.transparent,
              child: const Icon(Icons.notifications,
              color: CommonColor.WELCOME_TEXT_COLOR,),
            ),
          )
        ],
      ),
    );
  }


  Widget getBottomBarDesign(double parentHeight, double parentWidth) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(17),
          topRight: Radius.circular(17),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {

              addNewScreen(
                  HomeScreen(
                    mListener: this,
                  ),
                  ScreenConstant.HOME_PAGE);
            },
            onDoubleTap: () {},
            child: Container(
              height: parentHeight*0.07,
              width: parentWidth*0.17,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home,
                  color: currentScreen == ScreenConstant.HOME_PAGE ? CommonColor.APP_NAME_COLOR : CommonColor.BLACK_COLOR,),
                  Padding(
                    padding: EdgeInsets.only(top: parentHeight*0.003),
                    child: Text(
                      "Home",
                      style: TextStyle(
                          color: currentScreen == ScreenConstant.HOME_PAGE
                              ? CommonColor.APP_NAME_COLOR
                              : CommonColor.BLACK_COLOR,
                          fontSize: SizeConfig.blockSizeHorizontal*3.7,
                          fontFamily: "Roboto_Bold",
                          fontWeight: FontWeight.w400),

                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {

              isShow = true;
              addNewScreen(
                  HistoryScreen(
                    mListener: this,
                  ),
                  ScreenConstant.History_FRAGMENT);
            },
            onDoubleTap: () {},
            child: Container(
              height: parentHeight*0.07,
              width: parentWidth*0.17,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: const AssetImage("assets/images/history_icon.png"),
                    color: currentScreen == ScreenConstant.History_FRAGMENT
                        ? CommonColor.APP_NAME_COLOR
                        : CommonColor.BLACK_COLOR,
                    height: parentHeight*0.025,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: parentHeight*0.003),
                    child: Text(
                      "History",
                      style: TextStyle(
                          color: currentScreen == ScreenConstant.History_FRAGMENT
                              ? CommonColor.APP_NAME_COLOR
                              : CommonColor.BLACK_COLOR,
                          fontSize: SizeConfig.blockSizeHorizontal*3.7,
                          fontFamily: "Roboto_Bold",
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {

              isShow = true;
              addNewScreen(
                  BillScreen(
                    mListener: this,
                  ),
                  ScreenConstant.Bill_FRAGMENT);
            },
            onDoubleTap: () {},
            child: Container(
              height: parentHeight*0.07,
              width: parentWidth*0.17,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: const AssetImage("assets/images/bill_icon.png"),
                    color: currentScreen == ScreenConstant.Bill_FRAGMENT
                        ? CommonColor.APP_NAME_COLOR
                        : CommonColor.BLACK_COLOR,
                    height: parentHeight*0.025,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: parentHeight*0.003),
                    child: Text(
                      "Bills",
                      style: TextStyle(
                          color: currentScreen == ScreenConstant.Bill_FRAGMENT
                              ? CommonColor.APP_NAME_COLOR
                              : CommonColor.BLACK_COLOR,
                          fontSize: SizeConfig.blockSizeHorizontal*3.7,
                          fontFamily: "Roboto_Bold",
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}
