import 'package:flutter/material.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';
import 'package:scspay/presentation/select_number_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController _pageController = PageController();

  final List<String> FrameText = [
    "Now transfer your money in just one click.",
    "Now transfer your money in just one click.",
    "Now transfer your money in just one click."
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        height: SizeConfig.screenHeight,
        child: PageView.builder(
            itemCount: FrameText.length,
            controller: _pageController,
            onPageChanged: (index) {
              if (mounted) {
                setState(() {
                  currentIndex = index % FrameText.length;
                });
              }
            },
            itemBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: EdgeInsets.only(top: SizeConfig.screenHeight * 0.2),
                child: Column(
                  children: [
                    Image(
                      image: index == 0
                          ? const AssetImage(
                              "assets/images/welcome_frame_img.png")
                          : index == 1
                              ? const AssetImage(
                                  "assets/images/welcome_frame_img.png")
                              : index == 2
                                  ? const AssetImage(
                                      "assets/images/welcome_frame_img.png")
                                  : const AssetImage(
                                      "assets/images/welcome_frame_img.png"),
                      height: SizeConfig.screenHeight * 0.2,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: SizeConfig.screenHeight * 0.1),
                      child: Text(
                        "Welcome",
                        style: TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal * 6.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto_Bold',
                            color: CommonColor.WELCOME_TEXT_COLOR),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: SizeConfig.screenHeight * 0.03,
                          left: SizeConfig.screenWidth * 0.07,
                          right: SizeConfig.screenWidth * 0.07),
                      child: Text(
                        FrameText[index % FrameText.length],
                        style: TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                            fontWeight: FontWeight.w500,
                            height: 1.6,
                            fontFamily: 'Roboto_Regular'),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.screenHeight * 0.1,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          for (int i = 0; i < FrameText.length; i++)
                            Padding(
                              padding: EdgeInsets.only(
                                  left: SizeConfig.screenWidth * 0.01,
                                  right: SizeConfig.screenWidth * 0.01),
                              child: Container(
                                width: 7,
                                height: 7,
                                margin: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: currentIndex == i
                                      ? CommonColor.WELCOME_INDEX_COLOR
                                      : Colors.grey.shade400,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: SizeConfig.screenHeight * 0.05,
                          left: SizeConfig.screenWidth * 0.1,
                          right: SizeConfig.screenWidth * 0.1),
                      child: GestureDetector(
                        onDoubleTap: () {},
                        onTap: () {
                          if (index == 2) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SelectNumberScreen()));
                          } else {
                            if (mounted) {
                              setState(() {
                                currentIndex++;

                                _pageController.jumpToPage(currentIndex);
                              });
                            }
                          }
                        },
                        child: Container(
                          height: SizeConfig.screenHeight * 0.06,
                          decoration: BoxDecoration(
                              color: CommonColor.WELCOME_TEXT_COLOR,
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                index == 2 ? "Continue" : "Next",
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
                    Padding(
                      padding: EdgeInsets.only(
                          top: SizeConfig.screenHeight * 0.03,
                          left: SizeConfig.screenWidth * 0.07,
                          right: SizeConfig.screenWidth * 0.07),
                      child: Text(
                        "SKIP NOW",
                        style: TextStyle(
                            fontSize: SizeConfig.blockSizeHorizontal * 4.0,
                            fontWeight: FontWeight.w400,
                            height: 1.6,
                            fontFamily: 'Roboto_Regular'),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
