import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class StarRating extends StatelessWidget {
  final double  rate;

  StarRating({required this.rate,});

  @override
  Widget build(BuildContext context) {
    return SmoothStarRating(
        rating: rate,
        size: 14,
        filledIconData: Icons.star,
        halfFilledIconData: Icons.star_half,
        defaultIconData: Icons.star_border,
        starCount: 5,
        color: const Color.fromRGBO(247, 158, 68, 1),
        borderColor: const Color(0xffC4C4C4),
        allowHalfRating: false,
        spacing: 2.0,
        onRatingChanged: null);
  }
}
