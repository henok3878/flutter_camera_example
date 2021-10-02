import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'components/record_button.dart';
import 'components/sidebar.dart';

class RecordScreen extends StatelessWidget {
  static const String routeName = "/record_screen";

  const RecordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Build called record screen");
    return Container(
      height: 100.h,
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      // alignment: Alignment.bottomCenter,
      child: Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.20,
                  height: 100.h,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.transparent,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.20,
                        height: 35.h,
                        //color: Color.fromRGBO(20, 20, 255, 0.3),
                        color: Colors.transparent,
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: CameraSidebar(),
                        ),
                      ),
                      // Container(
                      //   width: MediaQuery.of(context).size.width * 0.20,
                      //   height: 10.h,
                      //   color: Colors.transparent,
                      // )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.80,
                    height: 0.h,
                    //color: Color.fromRGBO(10, 255, 10, 0.3),
                    color: Colors.transparent,
                    alignment: Alignment.bottomLeft,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 13.h,
            width: MediaQuery.of(context).size.width,
            //color: Color.fromRGBO(200, 10, 230, 0.3),
            alignment: Alignment.topCenter,
            child:  RecordButton(),
          ),
        ],
      ),
    );
  }
}
