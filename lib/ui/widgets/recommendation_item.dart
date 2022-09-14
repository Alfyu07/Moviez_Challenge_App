import 'package:flutter/material.dart';
import 'package:moviez_challenge/models/movie_models.dart';
import 'package:moviez_challenge/shared/style.dart';

class RecommendationItem extends StatelessWidget {
  final MovieModel movie;
  const RecommendationItem({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.only(left: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _image(),
            _details(),
          ],
        ),
      );

  Widget _image() => SizedBox(
        width: 300,
        height: 207,
        child: Stack(
          children: [
            PhysicalModel(
              shadowColor: const Color(0xff5E38E5).withOpacity(0.15),
              color: Colors.transparent,
              elevation: 17,
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  image: DecorationImage(
                    image: AssetImage(movie.imgUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  Widget _details() => Container(
        margin: const EdgeInsets.only(top: 18),
        width: 300,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    style: avenirHeavy.copyWith(
                      color: primaryColor,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: movie.genres
                        .map(
                          (genres) => Text(
                            movie.genres.last == genres ? genres : "$genres, ",
                            style: avenirBook.copyWith(
                              color: greyColor,
                              fontSize: 16,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                for (int i = 0; i < 5; i++)
                  Container(
                    margin: const EdgeInsets.only(right: 2),
                    width: 18,
                    height: 18,
                    child: Image.asset(
                      'assets/images/icon_star.png',
                      color: i < movie.rating ? orangeColor : lightGreyColor,
                    ),
                  )
              ],
            )
          ],
        ),
      );
}
