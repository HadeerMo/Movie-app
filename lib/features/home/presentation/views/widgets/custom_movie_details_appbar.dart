import 'package:flutter/material.dart';

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
            onPressed: () {},
            icon: const Icon(Icons.close,color: Colors.white,),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart,color: Colors.white,),
          ),
        ],
      ),
    );
  }
}
