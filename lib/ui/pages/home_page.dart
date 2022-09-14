import 'package:flutter/material.dart';
import 'package:moviez_challenge/models/movie_models.dart';
import 'package:moviez_challenge/shared/style.dart';
import 'package:moviez_challenge/ui/pages/search_page.dart';
import 'package:moviez_challenge/ui/widgets/movie_item.dart';
import 'package:moviez_challenge/ui/widgets/recommendation_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            background(),
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _header(),
                  _recommendationList(),
                  _disneyList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned background() {
    return Positioned(
      top: 0,
      right: 260,
      child: Container(
        width: 279,
        height: 813,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [bgColor, Color(0xffF0F1F6)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }

  Widget _header() => Container(
        margin: const EdgeInsets.only(left: defaultMargin, top: 33),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Moviez",
                  style: avenirBlack.copyWith(
                    color: primaryColor,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Watch much easier",
                  style: avenirBook.copyWith(
                    color: greyColor,
                    fontSize: 16,
                  ),
                )
              ],
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchPage(),
                  ),
                );
              },
              child: Container(
                width: 55,
                height: 45,
                padding: const EdgeInsets.only(
                  left: 22,
                  top: 11,
                  bottom: 12,
                  right: 11,
                ),
                child: Image.asset('assets/images/icon_search.png'),
              ),
            ),
          ],
        ),
      );

  Widget _recommendationList() => Container(
        margin: const EdgeInsets.only(top: 32),
        width: double.infinity,
        height: 279,
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            RecommendationItem(
              movie: movies[0],
            ),
            RecommendationItem(
              movie: movies[1],
            ),
          ],
        ),
      );

  Widget _disneyList() => Container(
        margin: const EdgeInsets.only(left: 24, right: 24, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "From Disney",
              style: avenirBlack.copyWith(
                color: primaryColor,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 20),
            ListView(
              shrinkWrap: true,
              primary: false,
              children: movies
                  .map(
                    (movie) => movie.studio.compareTo("Disney") == 0
                        ? MovieItem(
                            movie: movie,
                          )
                        : Container(),
                  )
                  .toList(),
            )
          ],
        ),
      );
}
