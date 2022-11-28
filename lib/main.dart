import 'package:challenge_fidibo/draggable_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: const DraggableWidgetHome(),
      ),
    );
  }
}

// GestureDetector(
// onHorizontalDragUpdate: (details) {
// // Note: Sensitivity is integer used when you don't want to mess up vertical drag
// int sensitivity = 8;
// if (details.delta.dx > sensitivity) {
// print('right');
// // Right Swipe
// } else if(details.delta.dx < -sensitivity){
// print('left');
// //Left Swipe
// }
// },
// onVerticalDragUpdate: (details) {
// int sensitivity = 8;
// if (details.delta.dy > sensitivity) {
// // Down Swipe
// } else if(details.delta.dy < -sensitivity){
// // Up Swipe
// }
// },
// child: Center(
// child: Container(
// color: Colors.yellow,
// width: 150,
// height: 150,
// ),
// ),
// ),
