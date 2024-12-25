import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppbarForDetails extends StatelessWidget {
  const CustomAppbarForDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.download,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}