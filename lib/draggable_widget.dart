import 'dart:math';

import 'package:flutter/material.dart';

class DraggableWidgetHome extends StatefulWidget {
  const DraggableWidgetHome({Key? key}) : super(key: key);

  @override
  State<DraggableWidgetHome> createState() => _DraggableWidgetHomeState();
}

class _DraggableWidgetHomeState extends State<DraggableWidgetHome> {
  double left = 150.0;
  double top = 250.0;
  List<String> listImage = [
    'https://wallpapershome.com/images/wallpapers/torres-del-paine-1440x2560-4k-hd-wallpaper-national-park-patagonia-202.jpg',
    'https://wallpapercave.com/wp/wp2169364.jpg',
    'http://static1.squarespace.com/static/564d14dfe4b0290681184a82/5a6222748165f5f4de0a61eb/5a622a2f0d9297c651efce56/1516382856157/20161007-JI-Rocky+Mountain+National+Park-_DSF1293.jpg?format=1500w',
    'https://www.pixelstalk.net/wp-content/uploads/2015/07/Beautiful-Country-Wallpaper.jpg',
    'https://cdn.wallpapersafari.com/57/40/jFmT1z.jpg',
    'https://wallpaperbat.com/img/392075-farm-desktop-background-beautiful.jpg',
    'https://w0.peakpx.com/wallpaper/279/248/HD-wallpaper-markhor-pakistan-wild-goat-animal-goat-national-animal-capra-falconeri.jpg',
  ];


  @override
  Widget build(BuildContext context) {
    var random =  Random().nextInt(listImage.length);

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: left,
            top: top,
            child: GestureDetector(
              onPanUpdate: (details) {
                left = max(0, left + details.delta.dx);
                top = max(0, top + details.delta.dy);
                onHorizontalDragUpdate:
                (details) {
                  double sensitivity = 1;
                  if (details.delta.dx > sensitivity) {
                    // Right Swipe
                  } else if (details.delta.dx < -sensitivity) {
                    //Left Swipe
                  }
                };
                onVerticalDragUpdate:
                (details) {
                  double sensitivity = 1;
                  if (details.delta.dy > sensitivity) {
                    // Down Swipe
                  } else if (details.delta.dy < -sensitivity) {
                    // Up Swipe
                  }
                };

                setState(() {});
              },

              onTap: () {
                setState(() {
                });
              },
              child: Container(
                height: 170,
                width: 150,
                //color: Colors.yellow,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(listImage[random]),
                        fit: BoxFit.fill)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
