import 'package:flutter/material.dart';
import 'package:snippets/globals/exports.dart';
import 'package:snippets/snippets/SkeletonView/user_review_json.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class NormalView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return userReviewUI();
  }

  Widget nameText(String name) => Text(
    name,
    style: TextStyle(
      color: darkText,
      fontSize: 16,
      fontWeight: FontWeight.w700
    ),
  );

  Widget ocupationText(String text) => Text(
    text,
    style: TextStyle(
        color: shadow,
        fontSize: 12,

    ),
  );

  Widget userHeader(String name, String avatarUrl, String ocupation) => Row(
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(right: 8),
        height: 55,
        width: 55,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(avatarUrl)
            )
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          nameText(name),
          SizedBox(height: 2),
          ocupationText(ocupation)
        ],
      )
    ],
  );

  Widget rateStars(double starsNumber) => Row(
    children: <Widget>[
      Expanded(
        child: Container(),
      ),
      SmoothStarRating(
          allowHalfRating: false,
          starCount: 5,
          rating: starsNumber,
          size: 20,
          color: Color(0xffFEC954),
          borderColor: Color(0xffFEC954),
          spacing:0.0
      ),
    ],
  );

  Widget reviewText(String text) => Text(
    text,
    style: TextStyle(
      color: shadow,
      fontSize: 12,
      height: 1.2,
      fontFamily: "Poppins",
      fontStyle: FontStyle.italic,
    ),
  );

  //First container give padding to all childrens
  Widget reviewContent(String text) => Container(
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: purpleMedium.withOpacity(0.1),
      borderRadius: BorderRadius.circular(6),
    ),

    //Second container place the open quote decoration
    child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/open_quote.png"),
          alignment: Alignment.topLeft,
        ),
      ),
      //Second container place the close quote decoration and give padding
      // to the text
      child: Container(
        padding: EdgeInsets.only(
          left: 24,
          right: 24,
          top: 4,
          bottom: 4
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/close_quote.png"),
            alignment: Alignment.bottomRight,
          ),
        ),
        child: reviewText(text),
      ),
    ),
  );


  Widget userReview(int index) => Container(
      padding: EdgeInsets.only(left: 32, right: 32),
      child: Column(
        children: <Widget>[
          userHeader(
            userReviews[index]['name'],
            userReviews[index]['avatarUrl'],
            userReviews[index]['occupation'],
          ),
          rateStars(
            userReviews[index]['stars'],
          ),
          SizedBox(height: 4),
          reviewContent(
            userReviews[index]['reviewContent']
          ),
        ],
      ),
    );

    Widget userReviewUI() {
      return Column(
        children: <Widget>[
          userReview(0),
          SizedBox(height: 32),
          userReview(1),
          SizedBox(height: 32),
          //userReview(1),
        ],
      );
    }

}
