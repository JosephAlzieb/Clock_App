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
      child: Stack(
        children: [
          Image.network(
            "https://www.pinclipart.com/picdir/big/43-431402_graphic-stock-huge-freebie-download-for-clock-no.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            child: Container(
              height: 15,
              width: 15,
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
