import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.deck),
              SizedBox(width: 40),
              Text('NAMAZ TIME APP'),
              SizedBox(width: 40),
              Icon(Icons.money_off_csred_outlined),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
              height: 200,
              width: 400,
              child: CircularCountDownTimer(
                duration: 10,
                initialDuration: 0,
                controller: CountDownController(),
                width: 200,
                height: 400,
                ringColor: Colors.grey[300]!,
                fillColor: Colors.purpleAccent[100]!,
                backgroundColor: Colors.purple[500],
                strokeWidth: 20.0,
                strokeCap: StrokeCap.round,
                textStyle: const TextStyle(
                    fontSize: 33.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
                textFormat: CountdownTextFormat.S,
                onStart: () {
                  print('Countdown Started');
                },
                onComplete: () {
                  print('Countdown Ended');
                },
              )),
        ],
      ),
    ));
    //   body: CustomScrollView(
    //     slivers: [
    //       SliverAppBar(
    // title: Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
    //   children: const [
    //     Icon(Icons.deck),
    //     SizedBox(width: 40),
    //     Text('NAMAZ TIME APP'),
    //     SizedBox(width: 40),
    //     Icon(Icons.money_off_csred_outlined),
    //   ],
    // ),
    //         centerTitle: true,
    //         flexibleSpace: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    // SizedBox(
    //     height: 200,
    //     width: 400,
    //     child: CircularCountDownTimer(
    //       duration: 10,
    //       initialDuration: 0,
    //       controller: CountDownController(),
    //       width: 200,
    //       height: 400,
    //       ringColor: Colors.grey[300]!,
    //       fillColor: Colors.purpleAccent[100]!,
    //       backgroundColor: Colors.purple[500],
    //       strokeWidth: 20.0,
    //       strokeCap: StrokeCap.round,
    //       textStyle: const TextStyle(
    //           fontSize: 33.0,
    //           color: Colors.white,
    //           fontWeight: FontWeight.bold),
    //       textFormat: CountdownTextFormat.S,
    //       onStart: () {
    //         print('Countdown Started');
    //       },
    //       onComplete: () {
    //         print('Countdown Ended');
    //       },
    //     )),
    //           ],
    //         ),
    //         expandedHeight: 350,
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.only(
    //             bottomLeft: Radius.elliptical(
    //                 MediaQuery.of(context).size.width * 0.5, 45.0),
    //             bottomRight: Radius.elliptical(
    //                 MediaQuery.of(context).size.width * 0.5, 45.0),
    //           ),
    //         ),
    //       ),
    //       SliverList(
    //         delegate: SliverChildBuilderDelegate(
    //           (context, index) => ListTile(title: Text('Item #$index')),
    //           childCount: 110,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
