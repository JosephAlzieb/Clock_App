import 'package:flutter/material.dart';

class Clock extends StatefulWidget {
  const Clock({Key? key}) : super(key: key);

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
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
          Container(
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
          //Minutes
          Container(
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
          // Hours
          Container(
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
