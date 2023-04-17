import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/Insurance/insurance_details_fill_screen.dart';
import 'package:scspay/presentation/Loan_Emi/loan_fill_details.dart';



class LoanListScreen extends StatefulWidget {
  const LoanListScreen({Key? key}) : super(key: key);

  @override
  State<LoanListScreen> createState() => _LoanListScreenState();
}

class _LoanListScreenState extends State<LoanListScreen> {




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
            color: CommonColor.APP_BAR_COLOR,
            height: SizeConfig.safeUsedHeight * .12,
            child: getTopText(SizeConfig.screenHeight, SizeConfig.screenWidth),
          ),

          Container(
            color: CommonColor.LAYOUT_BACKGROUND_COLOR,
            height: SizeConfig.safeUsedHeight * .88,
            child: CustomScrollView(
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03,
                          left: SizeConfig.screenWidth*0.05,
                          right: SizeConfig.screenWidth*0.05,),
                        child: Container(
                            height: SizeConfig.screenHeight*0.83,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: getAllFasTagList(SizeConfig.screenHeight, SizeConfig.screenWidth)
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
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
            child: Text("Loan",
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
                        hintText: focusText == true ? "" : "Search by Lender",
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

  Widget getAllFasTagList(double parentHeight, double parentWidth){
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10))
      ),
      child: ListView.builder(
          itemCount: 10,
          padding: EdgeInsets.only(bottom: parentHeight*0.025),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(top: parentHeight*0.03,
                  left: parentWidth*0.01,
                  right: parentWidth*0.01),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: parentWidth*0.05
                    ),
                    child: GestureDetector(
                      onDoubleTap: (){},
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoanDetailsFillScreen()));
                      },
                      child: Container(
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            Container(
                              height: SizeConfig.screenHeight*0.035,
                              width: SizeConfig.screenWidth*0.079,
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

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Padding(
                                  padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03,),
                                  child: Container(
                                    width: SizeConfig.screenWidth*0.65,
                                    color: Colors.transparent,
                                    child: Text(
                                        "Ring",
                                        style: TextStyle(
                                            fontSize:
                                            SizeConfig.blockSizeHorizontal * 4.0,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                            fontFamily: 'Roboto_Regular')
                                    ),
                                  ),
                                ),
                              ],
                            ),


                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: parentHeight*0.03),
                    child: Container(
                      height: parentWidth*0.003,
                      width: parentWidth*0.9,
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
            );
          }
      ),
    );
  }
}
