import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:snippets/globals/exports.dart';

class SkeletonView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Color(0xffDEE3F0),
      highlightColor: bgColor,
      child: skeletonUI(context)
    );
  }


  Widget skeletonText(BuildContext context, double percentWidth) => Container(
   height: 15,
   width: MediaQuery.of(context).size.width * percentWidth,
   color: Color(0xffDEE3F0),
  );

  Widget skeletonUserHeader(BuildContext context) => Row(
    children: <Widget>[
      Container(
        padding: EdgeInsets.all(2),
        margin: EdgeInsets.only(right: 8),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: bgColor,
            border: Border.all(color: Color(0xffDEE3F0))
        ),
        child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffDEE3F0)
          ),
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          skeletonText(context, 0.5),
          SizedBox(height: 8),
          skeletonText(context, 0.4),
        ],
      )
    ],
  );

  Widget skeletonUserComment1(BuildContext context) => Container(
    color: purpleMedium.withOpacity(0.5),
    padding: EdgeInsets.all(16),
    width: double.maxFinite,
    child: Column(
      children: <Widget>[
        skeletonText(context, 0.5),
        SizedBox(height: 16),
        skeletonText(context, 0.7),
        SizedBox(height: 16),
        skeletonText(context, 0.5),
      ],
    ),
  );

  Widget skeletonUserComment2(BuildContext context) => Container(
    color: purpleMedium.withOpacity(0.5),
    padding: EdgeInsets.all(16),
    width: double.maxFinite,
    child: Column(
      children: <Widget>[
        skeletonText(context, 0.5),
        SizedBox(height: 16),
        skeletonText(context, 0.7),
        SizedBox(height: 16),
        skeletonText(context, 0.5),
        SizedBox(height: 16),
        skeletonText(context, 0.7),
        SizedBox(height: 16),
        skeletonText(context, 0.5),
      ],
    ),
  );

 Widget skeletonUI(BuildContext context) {
   return Container(
     padding: EdgeInsets.only(left: 32, right: 32),
     child: Column(
       children: <Widget>[
         skeletonUserHeader(context),
         SizedBox(height: 16,),
         skeletonUserComment1(context),
         SizedBox(height: 32,),
         skeletonUserHeader(context),
         SizedBox(height: 16,),
         skeletonUserComment2(context)
       ],
     ),
   );

 }
}

