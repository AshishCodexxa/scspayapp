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
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [

          Container(
            height: SizeConfig.screenHeight*0.05,
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
            child: Padding(
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
                  Icon(Icons.search)
                ],
              ),
            ),
          ),

          Container(
            height: SizeConfig.screenHeight*0.75,
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
}

abstract class HistoryScreenInterface{

}