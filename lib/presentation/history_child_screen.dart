import 'package:flutter/material.dart';



class HistoryScreen extends StatefulWidget {

  final HistoryScreenInterface mListener;

  const HistoryScreen({Key? key, required this.mListener}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
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


abstract class HistoryScreenInterface{

}