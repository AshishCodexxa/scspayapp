import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/Gas_Cylinder/gas_booking_with_lpg_id.dart';



class GasBookingMethod extends StatefulWidget {
  const GasBookingMethod({Key? key}) : super(key: key);

  @override
  State<GasBookingMethod> createState() => _GasBookingMethodState();
}

class _GasBookingMethodState extends State<GasBookingMethod> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.screenHeight * 0.27,
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
                    padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            "Select Booking Method",
                            style: TextStyle(
                                fontSize:
                                SizeConfig.blockSizeHorizontal * 4.5,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontFamily: 'Roboto_Bold')
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.05, top: SizeConfig.screenHeight*0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                            "Registered Contact Number",
                            style: TextStyle(
                                fontSize:
                                SizeConfig.blockSizeHorizontal * 4.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontFamily: 'Roboto_Regular')
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.03),
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

                  GestureDetector(
                    onDoubleTap: (){},
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>GasBookingWithLPGScreen()));
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: Padding(
                        padding: EdgeInsets.only(left: SizeConfig.screenWidth*0.05, top: SizeConfig.screenHeight*0.03),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                  "LPG ID",
                                  style: TextStyle(
                                      fontSize:
                                      SizeConfig.blockSizeHorizontal * 4.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                      fontFamily: 'Roboto_Regular')
                              ),
                            ],
                          ),
                        ),
                      ),
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