import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
    //this.active = "home",
  }) : super(key: key);
  //final String active;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
        child: Container(
          width: double.infinity,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35.0),
            color: Color(0x99ffffff),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  // Navigator.pushReplacementNamed(
                  //     context, DashboardScreen.routeName);
                },
                iconSize: 50,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: //active == "home"
                // ? Container(
                //     padding: EdgeInsets.all(8),
                //     decoration: BoxDecoration(
                //       shape: BoxShape.circle,
                //       color: Color(0xffFDEBEB),
                //     ),
                //     child: SvgPicture.asset(
                //       Assets.homeIcon,
                //     ),
                //   )
                //:
                SvgPicture.asset(
                  'assets/svg/sound.svg',
                  height: 27,
                ),
              ),
              IconButton(
                onPressed: () {
                  // Navigator.pushNamed(context, MealScreen.routeName);
                  //Navigator.pushReplacementNamed(context, MealScreen.routeName);
                },
                iconSize: 50,
                icon:
                // active == "meal"
                //     ? Container(
                //         padding: EdgeInsets.all(8),
                //         decoration: BoxDecoration(
                //           shape: BoxShape.circle,
                //           color: Color(0xffFDEBEB),
                //         ),
                //         child: SvgPicture.asset(
                //           Assets.mealIcon,
                //         ),
                //       )
                //     :
                SvgPicture.asset(
                  'assets/svg/download.svg',
                  height: 27,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              IconButton(
                onPressed: () {
                  // Navigator.pushNamed(
                  //   context,
                  //   MainRecordScreen.routeName,
                  // );
                },
                iconSize: 50,
                icon:
                // active == "exercise"
                //     ? Container(
                //         padding: EdgeInsets.all(8),
                //         decoration: BoxDecoration(
                //           shape: BoxShape.circle,
                //           color: Color(0xffFDEBEB),
                //         ),
                //         alignment: Alignment.center,
                //         child: SvgPicture.asset(
                //           Assets.exerciseIcon,
                //           color: KowiColours.mainColor,
                //         ),
                //       )
                //     :
                SvgPicture.asset(
                  'assets/svg/fastforward.svg',
                  height: 23,
                ),
              ),
              // IconButton(
              //   onPressed: () {},
              //   // Navigator.pushReplacementNamed(
              //   //   context,
              //   //   AnalyticsHome.routeName,
              //   // ),
              //   iconSize: 50,
              //   icon:
              //       // active == "analytics"
              //       //     ? Container(
              //       //         padding: EdgeInsets.all(8),
              //       //         decoration: BoxDecoration(
              //       //           shape: BoxShape.circle,
              //       //           color: Color(0xffFDEBEB),
              //       //         ),
              //       //         child: SvgPicture.asset(
              //       //           Assets.webAnalyticsIcon,
              //       //         ),
              //       //       )
              //       //     :
              //       SvgPicture.asset(
              //     'assets/svg/noti.svg',
              //     height: 32,
              //   ),
              // ),
              // IconButton(
              //   onPressed: () {},
              //   // Navigator.pushReplacementNamed(
              //   //   context,
              //   //   ProfileScreen.routeName,
              //   // ),
              //   iconSize: 50,
              //   icon:
              //       // active == "chat"
              //       //     ? Container(
              //       //         padding: EdgeInsets.all(8),
              //       //         decoration: BoxDecoration(
              //       //           shape: BoxShape.circle,
              //       //           color: Color(0xffFDEBEB),
              //       //         ),
              //       //         child: SvgPicture.asset(
              //       //           Assets.sendIcon,
              //       //         ),
              //       //       )
              //       //     :
              //       SvgPicture.asset(
              //     'assets/svg/emailsend.svg',
              //     height: 32,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
