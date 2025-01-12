import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/core/utils/app_router.dart';
import 'package:movie_app/core/utils/styles.dart';
import 'package:movie_app/features/home/domain/entities/movie_entity.dart';
import 'package:movie_app/features/home/presentation/views/widgets/movie_rating.dart';

class MovieListViewItem extends StatelessWidget {
  const MovieListViewItem({super.key, required this.movie});
  final MovieEntity movie;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.detailsPath);
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 114,
              width: 71,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: CachedNetworkImage(
                  imageUrl: movie.image ?? kimageNotFound,
                  fit: BoxFit.fill,
                  // errorWidget: (context, url, error) {
                  //   return Container(
                  //     height: 114,
                  //     width: 71,
                  //     decoration: const BoxDecoration(
                  //       image: DecorationImage(
                  //         fit: BoxFit.fill,
                  //         image: AssetImage(
                  //             kimageNotFound),
                  //       ),
                  //     ),
                  //   );
                  // },
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .6,
                    child: Text(
                      movie.movieTitle,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGtSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  // ListView.builder(
                  //   scrollDirection: Axis.horizontal,
                  //   itemCount: movie.kind!.length,
                  //   itemBuilder: (context, index) {
                  //     return Text('${movie.kind![index]}, ');
                  //   },
                  // ),
                  Text(movie.kind![0]),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        movie.releasedYear.toString(),
                        style: Styles.textStyle18
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      MovieRate(
                        rate: movie.rating ?? 0,
                      )
                    ],
                  )
                ],
              ),
            ),
            // const SizedBox(
            //   width: 35,
            // ),
          ],
        ),
      ),
    );
  }
}
