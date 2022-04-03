import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class Clock extends StatefulWidget {
  const Clock({Key? key}) : super(key: key);

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  double minutesAngle = 0;
  double secondsAngle = 0;
  double hoursAngle = 0;
  Timer ? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(milliseconds: 500), (timer) {
      final now = DateTime.now();
      print(now);
      setState(() {
        secondsAngle = (pi / 30) * now.second;
        minutesAngle = pi / 30 * now.minute;
        hoursAngle = (pi / 6 * now.hour) + (pi / 45 * minutesAngle);
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      alignment: const Alignment(0,0),
      child: Stack(
        children: [
          //Clock Image without hands
          Center(
            child: Image.network(
              "https://www.pinclipart.com/picdir/big/43-431402_graphic-stock-huge-freebie-download-for-clock-no.png",
            ),
          ),
          // Seconds
          Transform.rotate(
            child: Container(
              child: Container(
                height: 140,
                width: 2,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
              alignment: const Alignment(0,-0.15),
            ),
            angle: secondsAngle,
          ),
          //Minutes
          Transform.rotate(
            child: Container(
              child: Container(
                height: 95,
                width: 5,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
              alignment: const Alignment(0,-0.15),
            ),
            angle: minutesAngle,
          ),
          // Hours
          Transform.rotate(
            child: Container(
              child: Container(
                height: 80,
                width: 7    ,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
              alignment: const Alignment(0,-0.1),
            ),
            angle: hoursAngle,
          ),
          // Dot
          Container(
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50)
              ),
            ),
            alignment: const Alignment(0,0),
          ),
        ],
      ),
    );
  }
}
