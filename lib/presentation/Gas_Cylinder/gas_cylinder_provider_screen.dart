import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/Gas_Cylinder/gas_booking_screen.dart';




class GasCylinderChildProvider extends StatefulWidget {
  const GasCylinderChildProvider({Key? key}) : super(key: key);

  @override
  State<GasCylinderChildProvider> createState() => _GasCylinderChildProviderState();
}

class _GasCylinderChildProviderState extends State<GasCylinderChildProvider> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
          children: [
            Container(
              color: CommonColor.LAYOUT_BACKGROUND_COLOR,
              height: SizeConfig.safeUsedHeight * .41,
              child: getAllFasTagList(SizeConfig.screenHeight, SizeConfig.screenWidth),
            ),
          ],
      ),
    );
  }

  Widget getAllFasTagList(double parentHeight, double parentWidth){
    return Padding(
      padding: EdgeInsets.only(top: parentHeight*0.03,
          left: parentWidth*0.01,
          right: parentWidth*0.01),
      child: Container(
        color: Colors.white,
        child: Padding(
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>GasBookingScreen()));
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
                                    "Bharat Gas",
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
              Padding(
                padding: EdgeInsets.only(
                    left: parentWidth*0.05,
                    top: parentHeight*0.03
                ),
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
                                "Bharat Gas - Commercial",
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
              Padding(
                padding: EdgeInsets.only(
                    left: parentWidth*0.05,
                    top: parentHeight*0.03
                ),
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
                                "HP Gas",
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
              Padding(
                padding: EdgeInsets.only(
                    left: parentWidth*0.05,
                    top: parentHeight*0.03
                ),
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
                                "Indane Gas ( Indian Oil )",
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
      ),
    );
  }

}
