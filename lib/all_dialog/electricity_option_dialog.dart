import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';



class ElectricityOptionDialog extends StatefulWidget {
  const ElectricityOptionDialog({Key? key}) : super(key: key);

  @override
  State<ElectricityOptionDialog> createState() => _ElectricityOptionDialogState();
}

class _ElectricityOptionDialogState extends State<ElectricityOptionDialog> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.screenHeight * 0.38,
      color: Colors.transparent,
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            )),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.05),
              child: Column(
                children: [

                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.screenHeight*0.02,
                      left: SizeConfig.screenWidth*0.05
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Container(
                          height: SizeConfig.screenHeight*0.026,
                          width: SizeConfig.screenWidth*0.055,
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

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Padding(
                              padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03,),
                              child: Container(
                                width: SizeConfig.screenWidth*0.65,
                                color: Colors.transparent,
                                child: Text(
                                    "MSEDC Mahavitaran",
                                    style: TextStyle(
                                        fontSize:
                                        SizeConfig.blockSizeHorizontal * 4.0,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                        fontFamily: 'Roboto_Medium')
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03,top: SizeConfig.screenHeight*0.005),
                              child: Container(
                                width: SizeConfig.screenWidth*0.65,
                                color: Colors.transparent,
                                child: Text(
                                    "173058966008",
                                    style: TextStyle(
                                        fontSize:
                                        SizeConfig.blockSizeHorizontal * 4.0,
                                        fontWeight: FontWeight.w400,
                                        color: CommonColor.PAYMENT_SETTING_COLOR.withOpacity(0.6),
                                        fontFamily: 'Roboto_Regular')
                                ),
                              ),
                            ),
                          ],
                        ),


                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.02),
                    child: Container(
                      height: SizeConfig.screenWidth*0.003,
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

                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.screenHeight*0.02,
                      left: SizeConfig.screenWidth*0.05,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Container(
                          height: SizeConfig.screenHeight*0.038,
                          width: SizeConfig.screenWidth*0.08,
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

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Padding(
                              padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03,),
                              child: Container(
                                width: SizeConfig.screenWidth*0.65,
                                color: Colors.transparent,
                                child: Text(
                                    "Update Nickname",
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
                  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.02),
                    child: Container(
                      height: SizeConfig.screenWidth*0.003,
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

                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.screenHeight*0.02,
                      left: SizeConfig.screenWidth*0.05,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Container(
                          height: SizeConfig.screenHeight*0.038,
                          width: SizeConfig.screenWidth*0.08,
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

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Padding(
                              padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03,),
                              child: Container(
                                width: SizeConfig.screenWidth*0.65,
                                color: Colors.transparent,
                                child: Text(
                                    "View History",
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
                  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.02),
                    child: Container(
                      height: SizeConfig.screenWidth*0.003,
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

                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.screenHeight*0.02,
                      left: SizeConfig.screenWidth*0.05,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Container(
                          height: SizeConfig.screenHeight*0.038,
                          width: SizeConfig.screenWidth*0.08,
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

                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Padding(
                              padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.03,),
                              child: Container(
                                width: SizeConfig.screenWidth*0.65,
                                color: Colors.transparent,
                                child: Text(
                                    "Delete Account",
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





                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onDoubleTap: (){},
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                    color: Colors.transparent,
                    child: Icon(Icons.clear)),
              ),
            )
          ],
        ),
      ),
    );
  }

}
