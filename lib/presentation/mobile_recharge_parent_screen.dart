import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/post_paid_mobile_number_screen.dart';
import 'package:scspay/presentation/pre_paid_mobile_number_screen.dart';



class MobileRechargeParentScreen extends StatefulWidget {
  const MobileRechargeParentScreen({Key? key}) : super(key: key);

  @override
  State<MobileRechargeParentScreen> createState() => _MobileRechargeParentScreenState();
}

class _MobileRechargeParentScreenState extends State<MobileRechargeParentScreen>  with SingleTickerProviderStateMixin{


  late TabController _tabController;
  bool showCancle = false;
  bool showSearch = false;
  bool focusText = false;
  TextEditingController searchController = TextEditingController();
  final _searchFocus = FocusNode();

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    // searchController.addListener(_searchTextController);
    searchController.addListener(removeSearch);
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  removeSearch() {
    if (searchController.text.trim().length > 0) {
      if (mounted) {
        setState(() {
          showCancle = true;
          _searchFocus.hasFocus;
        });
      }
    } else {
      if (mounted) {
        setState(() {
          showCancle = false;
          _searchFocus.hasFocus;
        });
      }
    }
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
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Padding(
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
                                  child: Text("Prepaid"),
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
                                  child: Text("Post Paid"),
                                ),
                              ),
                            ),
                          ]),

                      Expanded(
                          child: TabBarView(
                              controller: _tabController,
                              children: [
                                PrepaidMobileNumberScreen(),
                                PostpaidMobileNumberScreen()
                              ])
                      )
                    ],
                  ),
                ),
                Visibility(
                  visible: showCancle,
                  child: Padding(
                    padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.015, left: SizeConfig.screenWidth*0.03,
                        right: SizeConfig.screenWidth*0.03),
                    child: Container(
                      height: SizeConfig.screenHeight*0.16,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [

                            Padding(
                              padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.015, left: SizeConfig.screenWidth*0.03,
                                  right: SizeConfig.screenWidth*0.03),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Contact",
                                    style: TextStyle(
                                        fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                        fontFamily: "Roboto_Medium",
                                        fontWeight: FontWeight.w500,
                                        color: CommonColor.BLACK_COLOR
                                    ),),
                                ],
                              ),
                            ),

                            Container(
                              height: SizeConfig.screenHeight*0.1,
                              color: Colors.transparent,
                              child: ListView.builder(
                                  itemCount: 1,
                                  padding: EdgeInsets.zero,
                                  itemBuilder: (BuildContext context, int index) {
                                    return Padding(
                                      padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.02,
                                          left: SizeConfig.screenWidth*0.05, right: SizeConfig.screenWidth*0.05),
                                      child: Padding(
                                        padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: SizeConfig.screenHeight*0.046,
                                              width: SizeConfig.screenWidth*0.097,
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
                                                    width: SizeConfig.screenWidth*0.6,
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          color: Colors.transparent,
                                                          width: SizeConfig.screenWidth*0.52,
                                                          child: Text("New Number",
                                                            style: TextStyle(
                                                                fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                                                fontFamily: "Roboto_Regular",
                                                                fontWeight: FontWeight.w400,
                                                                color: CommonColor.BLACK_COLOR
                                                            ),),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.006),
                                                    child:  Container(
                                                      color: Colors.transparent,
                                                      width: SizeConfig.screenWidth*0.6,
                                                      child: Text("9586472564",
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
                                    );
                                  }
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ),
        ],
      ),
    );
  }

  Widget getTopText(double parentHeight, double parentWidth) {
    return showSearch == false ?
    Padding(
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
          GestureDetector(
            onDoubleTap: (){},
            onTap: (){
              if(mounted){
                setState(() {
                  showSearch = !showSearch;
                });
              }
            },
            child: Container(
              color: Colors.transparent,
              child: const Icon(Icons.search,
                color: Colors.black,),
            ),
          )
        ],
      ),
    ) : getSearchLayout(parentHeight, parentWidth);
  }

  Widget getSearchLayout(double parentHeight, double parentWidth) {
    return Visibility(
      visible: showSearch,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.04, left: parentWidth*0.03),
            child: GestureDetector(
              onDoubleTap: (){},
              onTap: (){
                if(mounted){
                  setState(() {
                    showSearch = !showSearch;
                  });
                }
              },
              child: Container(
                  color: Colors.transparent,
                  child: Icon(Icons.arrow_back_ios_new)),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  top: parentHeight * 0.05,
                  bottom: parentHeight * 0.012,
                  left: parentWidth * 0.05,
                  right: parentWidth * 0.04),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: CommonColor.WHITE_COLOR, width: 3.0),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    controller: searchController,
                    focusNode: _searchFocus,
                    onTap: () {
                      if (mounted) {
                        setState(() {
                          focusText = true;
                        });
                      }
                    },
                    onFieldSubmitted: (term) {
                      print("searchuser");
                      if (mounted) {
                        setState(() {
                          showCancle = false;
                        });
                      }
                    },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search_outlined,
                          color: Colors.black26,
                        ),
                        suffixIcon: Visibility(
                            visible: showCancle || _searchFocus.hasFocus,
                            child: GestureDetector(
                              onDoubleTap: () {},
                              onTap: () {
                                if (mounted) {
                                  setState(() {
                                    searchController.clear();
                                    if (mounted) {
                                      setState(() {
                                        focusText = false;
                                        _searchFocus.unfocus();
                                      });
                                    }
                                  });
                                }
                              },
                              child: Container(
                                  color: Colors.transparent,
                                  child: const Icon(
                                    Icons.clear,
                                    color: Colors.red,
                                  )),
                            )),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: focusText == true ? "" : "Search by Number or Name",
                        hintStyle: TextStyle(
                            color: Colors.black26,
                            fontFamily: 'Roboto_Regular',
                            fontWeight: FontWeight.w400,
                            fontSize: SizeConfig.blockSizeHorizontal * 4.0)),
                    style: TextStyle(
                        color: CommonColor.BLACK_COLOR,
                        fontFamily: 'Roboto_Regular',
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.blockSizeHorizontal * 4.0),
                  )),
            ),
          ),
        ],
      ),
    );
  }

}
