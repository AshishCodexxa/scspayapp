import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:scspay/common_file/common_color.dart';
import 'package:scspay/common_file/size_config.dart';


class QRScanningScreen extends StatefulWidget {
  const QRScanningScreen({Key? key}) : super(key: key);

  @override
  State<QRScanningScreen> createState() => _QRScanningScreenState();
}

class _QRScanningScreenState extends State<QRScanningScreen> {


  final qrKey = GlobalKey(debugLabel: 'QR');

  QRViewController? controller;
  Barcode? barcode;


  @override
  void reassemble() async{
    if(Platform.isAndroid){
      await controller?.pauseCamera();
    }else if (Platform.isIOS) {
      controller?.resumeCamera();
    }
    super.reassemble();

  }


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    controller?.resumeCamera();
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            buildQrView(context),
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.5,
                  left: SizeConfig.screenWidth*0.3, right: SizeConfig.screenWidth*0.3),
              child: Text("Scan QR Code to Pay Spot Code to Connect",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: 'Roboto_Medium',
                    fontWeight: FontWeight.w400,
                    height: SizeConfig.screenHeight*0.0012
                ),
                textAlign: TextAlign.center,),
            ),
            Positioned(
              bottom: 90,
              child: buildResult(),
            ),
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.screenHeight*0.9,
                  left: SizeConfig.screenWidth*0.3, right: SizeConfig.screenWidth*0.3),
              child: Text("RS | BHIM | UPI | VISA ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: SizeConfig.blockSizeHorizontal*4.0,
                    fontFamily: 'Roboto_Medium',
                    fontWeight: FontWeight.w400,
                    height: SizeConfig.screenHeight*0.0012
                ),
                textAlign: TextAlign.center,),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildQrView(BuildContext context)=> QRView(
      key: qrKey,
      onQRViewCreated: onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderColor: CommonColor.APP_NAME_COLOR,
        borderRadius: 7,
        borderLength: 30,
        borderWidth: 10,
        cutOutSize: MediaQuery.of(context).size.width * 0.6
      ),
  );

  void onQRViewCreated(QRViewController controller){
    if(mounted){
      setState(() {
        this.controller = controller;

        controller.scannedDataStream.listen((barcode) => setState(() {
          this.barcode = barcode;
          // print(barcode);
        }));
      });
    }
  }

  Widget buildResult()=> Container(
    width: 200,
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white24
    ),
    child: Text(
      barcode != null ? 'Result : ${barcode?.code}' :  'Scan a code',
      maxLines: 3,
      textAlign: TextAlign.center,
    ),
  );
}




