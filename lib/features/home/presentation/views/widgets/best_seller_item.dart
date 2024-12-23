import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/core/utils/styles.dart';
import 'package:movie_app/features/home/presentation/views/widgets/movie_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 114,
            width: 71,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                  image: NetworkImage(
                      'https://m.media-amazon.com/images/M/MV5BY2RjN2M3NmMtNGJhZS00NGEwLWE4NTktOGQ5MDQ4MjZlZGJmXkEyXkFqcGdeQXVyMTkzODUwNzk@._V1_UY268_CR1,0,182,268_AL_.jpg'),
                  fit: BoxFit.fill),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
           Expanded(
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    'Harry Potter and the Goblet of Fire',
                    style: Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 3,),
                const Text('J.K. Rowling',style: Styles.textStyle14,),
                const SizedBox(height: 3,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('19.99 €',style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                    const SizedBox(width: 10,),
                    const MovieRate()
                  ],
                               )
              ],
                     ),
           ),
           const SizedBox(width: 35,),
      
      
        ],
      ),
    );
  }
}

