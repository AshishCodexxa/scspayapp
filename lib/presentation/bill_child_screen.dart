import 'package:flutter/material.dart';



class BillScreen extends StatefulWidget {

  final BillScreenInterface mListener;

  const BillScreen({Key? key, required this.mListener}) : super(key: key);

  @override
  State<BillScreen> createState() => _BillScreenState();
}

class _BillScreenState extends State<BillScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

        ],
      ),
    );
  }
}

abstract class BillScreenInterface{

}