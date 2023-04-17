import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/Gas_Cylinder/gas_pipeline_booking_screen.dart';


class PipeLineGasChildScreen extends StatefulWidget {
  const PipeLineGasChildScreen({Key? key}) : super(key: key);

  @override
  State<PipeLineGasChildScreen> createState() => _PipeLineGasChildScreenState();
}

class _PipeLineGasChildScreenState extends State<PipeLineGasChildScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.02, left: SizeConfig.screenWidth*0.05,
          right: SizeConfig.screenWidth*0.05),
      child: Container(
        decoration: BoxDecoration(
          color: CommonColor.LAYOUT_BACKGROUND_COLOR,
        ),
        child: getAllFasTagList(SizeConfig.screenHeight, SizeConfig.screenWidth)
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
          padding: EdgeInsets.zero,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>GasPipelineBookingScreen()));
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
                                        "Adani Gas",
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
