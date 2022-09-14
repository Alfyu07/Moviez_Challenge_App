import 'package:flutter/material.dart';
import 'package:moviez_challenge/models/movie_models.dart';
import 'package:moviez_challenge/shared/style.dart';

class MovieItem extends StatelessWidget {
  final MovieModel movie;
  const MovieItem({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      width: double.infinity,
      child: Row(
        children: [
          Container(
            width: 100,
            height: 127,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              image: DecorationImage(
                image: AssetImage(movie.imgUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 20),
          Column(
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
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Row(children: [
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
                ]),
              ),
            ],
          )
        ],
      ),
    );
  }
}
