import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/core/utils/styles.dart';

class MovieRate extends StatelessWidget {
  const MovieRate({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start, required this.rate,
  });
  final MainAxisAlignment mainAxisAlignment;
  final double rate;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          rate.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        // Opacity(
        //   opacity: .7,
        //   child: Text(
        //     '(254)',
        //     style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
        //   ),
        // )
      ],
    );
  }
}
