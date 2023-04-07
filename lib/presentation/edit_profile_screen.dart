import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';



class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {


  TextEditingController userName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();

  final _userNameFocus = FocusNode();
  final _phoneNumberFocus = FocusNode();


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
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(bottom: SizeConfig.screenHeight*0.1),
              children: [
                getProfileLayout(SizeConfig.screenHeight, SizeConfig.screenWidth),
                AllFormLayout(SizeConfig.screenHeight, SizeConfig.screenWidth),
              ],
            ),
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
              Navigator.pop(context);
            },
            child: Container(
                color: Colors.transparent,
                child: Icon(Icons.arrow_back_ios_new)),
          ),
          Padding(
            padding: EdgeInsets.only(left: parentHeight * 0.01),
            child: Text("Edit Profile",
              style: TextStyle(
                  fontSize: SizeConfig.blockSizeHorizontal*6.0,
                  fontFamily: "Roboto_Medium",
                  fontWeight: FontWeight.w500,
                  color: CommonColor.BLACK_COLOR
              ),),
          ),
          const Icon(Icons.notifications,
            color: Colors.transparent,)
        ],
      ),
    );
  }


  Widget getProfileLayout(double parentHeight, double parentWidth)  {
    return Padding(
      padding: EdgeInsets.only(top: parentHeight*0.04),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            height: parentHeight*0.15,
            decoration: BoxDecoration(
              color: CommonColor.PROFILE_BACKGROUND_COLOR,
              shape: BoxShape.circle,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: parentWidth*0.33),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image(image: AssetImage("assets/images/camera_background.png")),
                Icon(Icons.camera_enhance_rounded, color: Colors.black,)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget AllFormLayout(double parentHeight, double parentWidth)  {
    return Padding(
      padding: EdgeInsets.only(top: parentHeight*0.07, left: parentWidth*0.05),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Personal Details",
            style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.blockSizeHorizontal*4.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto_Bold'
            ),),
          Padding(
            padding: EdgeInsets.only( left: parentWidth*0.05, right: parentWidth*0.1, top: parentHeight*0.02),
            child: TextFormField(
              controller: userName,
              decoration: const InputDecoration(
                labelText: 'User Name',
              ),
              keyboardType: TextInputType.text,
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'email Field Is Required';
                } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                  return 'Please enter a valid email address';
                }

                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only( left: parentWidth*0.05, right: parentWidth*0.1, top: parentHeight*0.02),
            child: TextFormField(
              controller: phoneNumber,
              decoration: InputDecoration(
                labelText: 'Phone No.',
              ),
              keyboardType: TextInputType.number,
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'email Field Is Required';
                } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                  return 'Please enter a valid email address';
                }

                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: SizeConfig.screenHeight * 0.2,
                left: SizeConfig.screenWidth * 0.1,
                right: SizeConfig.screenWidth * 0.1),
            child: GestureDetector(
              onDoubleTap: () {},
              onTap: () {
                  Navigator.pop(context);
              },
              child: Container(
                height: SizeConfig.screenHeight * 0.06,
                decoration: BoxDecoration(
                    color: CommonColor.APP_NAME_COLOR,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Update",
                      style: TextStyle(
                          fontSize:
                          SizeConfig.blockSizeHorizontal * 4.5,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontFamily: 'Roboto_Regular'),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
