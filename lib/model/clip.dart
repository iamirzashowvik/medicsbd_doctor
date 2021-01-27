import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Canvass extends StatefulWidget {
  @override
  _CanvassState createState() => _CanvassState();
}

class _CanvassState extends State<Canvass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0x00000000),
      body: Stack(
        children: <Widget>[
          // Adobe XD layer: 'Background' (shape)
          Container(
            width: 375.0,
            height: 812.0,
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: const AssetImage(''),
            //     fit: BoxFit.fill,
            //   ),
            // ),
          ),

          Transform.translate(
            //   offset: Offset(-54.0, -92.0),
            offset: Offset(0, -92.0),
            child:
                // Adobe XD layer: 'top part' (group)
                SizedBox(
              width: 505.0,
              height: 309.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 505.0, 309.2),
                    size: Size(505.0, 309.2),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'Rectangle 1' (shape)
                        SvgPicture.string(
                      _svg_7dqzro,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  // Pinned.fromSize(
                  //   bounds: Rect.fromLTWH(120.0, 202.0, 244.0, 19.0),
                  //   size: Size(505.0, 309.2),
                  //   fixedWidth: true,
                  //   fixedHeight: true,
                  //   child: Text(
                  //     widget.message,
                  //     style: TextStyle(
                  //       fontFamily: 'Montserrat-Regular',
                  //       fontSize: 16,
                  //       color: const Color(0xff777777),
                  //       height: 1.2000000476837158,
                  //     ),
                  //     textAlign: TextAlign.left,
                  //   ),
                  // ),
                  // Pinned.fromSize(
                  //   bounds: Rect.fromLTWH(199.0, 166.0, 100, 29.0),
                  //   size: Size(505.0, 309.2),
                  //   fixedWidth: true,
                  //   fixedHeight: true,
                  //   child: Text(
                  //     widget.title,
                  //     style: TextStyle(
                  //       fontFamily: 'Montserrat-SemiBold',
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 24,
                  //       color: const Color(0xff000000),
                  //       height: 1.2000000476837158,
                  //     ),
                  //     textAlign: TextAlign.center,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_7dqzro =
    '<svg viewBox="-54.0 -92.0 505.0 309.2" ><path  d="M -54 -92 L 451 -92 L 451 195 C 451 195 310.9166870117188 244.9409027099609 193 195 C -38.39030075073242 97 -54 195 -54 195 L -54 -92 Z" fill="#d8ffd7" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
