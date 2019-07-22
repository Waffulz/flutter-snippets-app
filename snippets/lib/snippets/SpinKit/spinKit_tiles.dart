import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:snippets/globals/exports.dart';

class SpinKitGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return spinKitTilesGrid(context);
  }

  Widget spinKitTile(Widget child, String text) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.all(Radius.circular(4))
      ),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  gradient: GradientTheme.purple()
              ),
              child: child,
            ),
          ),
          SizedBox(height: 12),
          Text(
            text,
            style: TextStyle(
                color: lightText,
                fontSize: normalText,
                fontWeight: FontWeight.w600
            ),
          )
        ],
      ),
    );
  }

  Widget spinKitTilesGrid(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: MediaQuery
          .of(context)
          .size
          .height / 1000,
      children: <Widget>[
        spinKitTile(
            SpinKitRotatingPlain(color: white),
            'Rotating Plane'
        ),
        spinKitTile(
            SpinKitDoubleBounce(color: white),
            'Double Bounce'
        ),
        spinKitTile(
            SpinKitWave(color: white),
            'Wave'
        ),
        spinKitTile(
            SpinKitWanderingCubes(color: white),
            'Wandering Cubes'
        ),
        spinKitTile(
            SpinKitFadingFour(color: white),
            'Fading Four'
        ),
        spinKitTile(
            SpinKitPulse(color: white),
            'Pulse'
        ),
        spinKitTile(
            SpinKitChasingDots(color: white),
            'Chasing Dots'
        ),
        spinKitTile(
            SpinKitThreeBounce(color: white),
            'Three Bounce'
        ),
        spinKitTile(
            SpinKitCircle(color: white),
            'Circle'
        ),
        spinKitTile(
            SpinKitCubeGrid(color: white),
            'Cube Grid'
        ),
        spinKitTile(
            SpinKitPumpingHeart(color: white),
            'Pumping Hearth'
        ),
        spinKitTile(
            SpinKitDualRing(color: white),
            'Dual Ring'
        ),
        spinKitTile(
            SpinKitRipple(color: white),
            'Ripple'
        ),
      ],
    );
  }
}