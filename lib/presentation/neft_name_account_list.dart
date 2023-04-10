import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/bank_select_screen.dart';





class NEFTNameAccountList extends StatefulWidget {
  const NEFTNameAccountList({Key? key}) : super(key: key);

  @override
  State<NEFTNameAccountList> createState() => _NEFTNameAccountListState();
}

class _NEFTNameAccountListState extends State<NEFTNameAccountList> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListView(
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
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.only(bottom: SizeConfig.screenHeight * 0.1),
                  children: [
                    getAllList(SizeConfig.screenHeight, SizeConfig.screenWidth)
                  ],
                ),
              ),
            ],
          ),
          GestureDetector(
            onDoubleTap: (){},
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>BankSelectionScreen()));
            },
            child: Container(
              height: SizeConfig.screenHeight*0.05,
              color: CommonColor.SIM_VERIFY_COLOR.withOpacity(0.5),
              child:  Center(
                child: Text("Add Beneficiary Account",
                  style: TextStyle(
                      fontSize: SizeConfig.blockSizeHorizontal*5.0,
                      fontFamily: "Roboto_Medium",
                      fontWeight: FontWeight.w500,
                      color: CommonColor.WHITE_COLOR
                  ),),
              ),
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
            child: Text("NEFT",
              style: TextStyle(
                  fontSize: SizeConfig.blockSizeHorizontal*6.0,
                  fontFamily: "Roboto_Medium",
                  fontWeight: FontWeight.w500,
                  color: CommonColor.BLACK_COLOR
              ),),
          ),
          const Icon(Icons.search,
            color: Colors.black,)
        ],
      ),
    );
  }

  Widget getAllList(double parentHeight, double parentWidth){
    return Padding(
      padding:  EdgeInsets.all(20),
      child: Container(
        height: parentHeight*0.75,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),

        ),
        child:  ListView.builder(
            itemCount: 5,
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(top: parentHeight*0.01, left: parentWidth*0.01),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Padding(
                          padding: EdgeInsets.only(left: parentWidth*0.02),
                          child: Container(
                            height: parentHeight*0.08,
                            width: parentWidth*0.18,
                            decoration: BoxDecoration(
                                color: CommonColor.NEFT_BACKGROUND_COLOR,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only( top: parentHeight*0.01, left: parentWidth*0.03),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text("Payee Name",
                                style: TextStyle(
                                    fontSize: SizeConfig.blockSizeHorizontal*5.0,
                                    fontFamily: "Roboto_Medium",
                                    fontWeight: FontWeight.w500,
                                    color: CommonColor.BLACK_COLOR
                                ),),

                              Padding(
                                padding: EdgeInsets.only(top: parentHeight*0.01, bottom: parentHeight*0.01),
                                child: Text("xxxxxxxxxxxx108",
                                  style: TextStyle(
                                      fontSize: SizeConfig.blockSizeHorizontal*4.0,
                                      fontFamily: "Roboto_Medium",
                                      fontWeight: FontWeight.w500,
                                      color: CommonColor.BLACK_COLOR
                                  ),),
                              ),

                            ],
                          ),
                        )

                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: parentHeight*0.02),
                      child: Container(
                        height: parentWidth*0.003,
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
      ),
    );
  }
}

