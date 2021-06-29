import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlurTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Stack(children: <Widget>[
      //   ListView(
      //     children: <Widget>[
      //       ClipRect(
      //         child: BackdropFilter(
      //             filter: ImageFilter.blur(
      //               sigmaX: 5.0,
      //               sigmaY: 5.0,
      //             ),
      //             child: Container(
      //                 color: Colors.black.withOpacity(0.2),
      //                 width: 200.0,
      //                 height: 200.0,
      //                 child: Text(
      //                   "Sdfasdf",
      //                   style: Theme.of(context).textTheme.headline3,
      //                 ))),
      //       ),
      //       CC(),
      //       CC(),
      //       CC(),
      //       CC(),
      //       CC(),
      //       CC(),
      //       CC(),
      //       CC(),
      //     ],
      //   ),
      // ]),

      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          CC(),
          Center(
            child: ClipRect(
              // <-- clips to the 200x200 [Container] below
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5.0,
                  sigmaY: 5.0,
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: 200.0,
                  height: 200.0,
                  child: Text('asdasd '),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('BUY TICKETS'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('LISTEN'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
