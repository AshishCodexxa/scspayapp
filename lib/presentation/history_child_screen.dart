import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';



class HistoryScreen extends StatefulWidget {

  final HistoryScreenInterface mListener;

  const HistoryScreen({Key? key, required this.mListener}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {


  bool showCancle = false;
  bool showSearch = false;
  bool focusText = false;
  TextEditingController searchController = TextEditingController();
  final _searchFocus = FocusNode();

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
            height: SizeConfig.screenHeight*0.07,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: const Offset(2, 6))
              ],
            ),
            child: showSearch == false ? Padding(
              padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03, right: SizeConfig.screenHeight*0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All Transaction",
                    style: TextStyle(
                        fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto_Bold',
                        color: CommonColor.BLACK_COLOR),
                    textAlign: TextAlign.center,
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
                        child: Icon(Icons.search)
                    ),
                  )
                ],
              ),
            ) :
            getSearchLayout(SizeConfig.screenHeight, SizeConfig.screenWidth),
          ),

          Container(
            height: SizeConfig.screenHeight*0.73,
            color: Colors.transparent,
            child: ListView.builder(
                itemCount: 20,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.zero,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.01, left: SizeConfig.screenWidth*0.03),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: SizeConfig.screenHeight*0.07,
                              width: SizeConfig.screenWidth*0.15,
                              decoration: BoxDecoration(
                                color: CommonColor.BANK_CARD_BACKGROUND_COLOR,
                                shape: BoxShape.circle,
                              ),
                              child: Image(image: AssetImage("assets/images/contact_profile.png"),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03, top: SizeConfig.screenHeight*0.01),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    color: Colors.transparent,
                                    width: SizeConfig.screenWidth*0.73,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          color: Colors.transparent,
                                          width: SizeConfig.screenWidth*0.5,
                                          child: Text("Nikita Mahendrakar",
                                            style: TextStyle(
                                                fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                                fontFamily: "Roboto_Medium",
                                                fontWeight: FontWeight.w500,
                                                color: CommonColor.BLACK_COLOR
                                            ),),
                                        ),
                                        Text("-Rs 1000",
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
                                      width: SizeConfig.screenWidth*0.7,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Recharge 6 Jul,21",
                                            style: TextStyle(
                                                fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                                fontFamily: "Roboto_Regular",
                                                fontWeight: FontWeight.w400,
                                                color: CommonColor.BLACK_COLOR
                                            ),),

                                          Text("Done",
                                            style: TextStyle(
                                                fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                                fontFamily: "Roboto_Regular",
                                                fontWeight: FontWeight.w400,
                                                color: CommonColor.BLACK_COLOR
                                            ),),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.02,
                        left: SizeConfig.screenWidth*0.03,
                        right: SizeConfig.screenWidth*0.03,),
                        child: Container(
                          height: SizeConfig.screenWidth*0.003,
                          color: Colors.black.withOpacity(0.1),
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
                  );
                }
            ),
          )

        ],
      ),
    );
  }

  Widget getSearchLayout(double parentHeight, double parentWidth) {
    return Visibility(
      visible: showSearch,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: parentHeight*0.0, left: parentWidth*0.03),
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
                  top: parentHeight * 0.00,
                  bottom: parentHeight * 0.012,
                  left: parentWidth * 0.05,
                  right: parentWidth * 0.04),
              child: Container(
                  decoration: BoxDecoration(
                      color: CommonColor.LAYOUT_BACKGROUND_COLOR,
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
                        hintText: focusText == true ? "" : "Search by biller",
                        hintStyle: TextStyle(
                            color: Colors.black26,
                            fontFamily: 'Roboto_Regular',
                            fontWeight: FontWeight.w400,
                            fontSize: SizeConfig.blockSizeHorizontal * 3.5)),
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

abstract class HistoryScreenInterface{

}