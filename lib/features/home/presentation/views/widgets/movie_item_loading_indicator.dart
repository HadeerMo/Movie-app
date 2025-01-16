import 'package:flutter/material.dart';

class MovieItemLoadingIndicator extends StatelessWidget {
  const MovieItemLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 114,
            width: 71,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Container(
                color: Colors.grey[50],
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 6,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .4,
                  height: 23,
                  color: Colors.grey[50],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 18,
                  width: 40,
                  color: Colors.grey[50],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 20,
                      width: 50,
                      color: Colors.grey[50],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 18,
                      width: 40,
                      color: Colors.grey[50],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
