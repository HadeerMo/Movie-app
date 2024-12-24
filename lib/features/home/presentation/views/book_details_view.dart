import 'package:flutter/material.dart';
import 'package:movie_app/features/home/presentation/views/widgets/book_details_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: BookDetailsBody(),
      ),
    );
  }
}
