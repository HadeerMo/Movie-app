import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/core/utils/styles.dart';

class MovieRate extends StatelessWidget {
  const MovieRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       const Icon(FontAwesomeIcons.solidStar,color: Color(0xffFFDD4F),)  ,
       const SizedBox(width: 6.3,),
       const Text('4.8',style: Styles.textStyle16,),
       const SizedBox(width: 5,),
       Text('(254)',style: Styles.textStyle14.copyWith(color: const Color.fromARGB(255, 160, 160, 160)),)
      ],
    );
  }
}