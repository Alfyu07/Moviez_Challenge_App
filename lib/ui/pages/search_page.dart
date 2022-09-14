import 'package:flutter/material.dart';
import 'package:moviez_challenge/models/movie_models.dart';
import 'package:moviez_challenge/provider/movie_provider.dart';
import 'package:moviez_challenge/shared/style.dart';
import 'package:moviez_challenge/ui/widgets/movie_item.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Provider.of<MovieProvider>(context, listen: false).searchResult =
            movies;

        Provider.of<MovieProvider>(context, listen: false).isLoading = false;
        return true;
      },
      child: Scaffold(
        backgroundColor: const Color(0xffFBFBFD),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Stack(
              children: [
                background(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    searchBar(),
                    result(),
                    suggestButton(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Align background() {
    return Align(
      alignment: Alignment.topRight,
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

  Widget searchBar() => Center(
        child: Container(
          margin: const EdgeInsets.only(
              top: defaultMargin, left: defaultMargin, right: defaultMargin),
          child: Container(
            height: 45,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 11, bottom: 12, left: 22),
                  child: Image.asset('assets/images/icon_search.png'),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 11,
                      bottom: 12,
                    ),
                    child: TextField(
                      // onChanged: (value) {},
                      onSubmitted: (value) {
                        Provider.of<MovieProvider>(context, listen: false)
                            .searchMovie(value);
                      },
                      style: avenirRoman.copyWith(
                          color: primaryColor, fontSize: 16),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(bottom: 11),
                        hintText: 'Mulan',
                        hintStyle: avenirRoman.copyWith(
                          color: greyColor,
                          fontSize: 16,
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget result() => Consumer<MovieProvider>(
        builder: (context, provider, _) => provider.isLoading
            ? SizedBox(
                width: double.infinity,
                child: Column(
                  children: const [
                    SizedBox(height: 80),
                    CircularProgressIndicator(
                      color: primaryColor,
                    )
                  ],
                ),
              )
            : Container(
                margin: const EdgeInsets.only(
                    top: 35, left: defaultMargin, right: defaultMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Search Result(${provider.searchResult.length})",
                      style: avenirHeavy.copyWith(
                        fontSize: 20,
                        color: primaryColor,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ListView(
                      shrinkWrap: true,
                      primary: false,
                      children: provider.searchResult
                          .map((movie) => MovieItem(movie: movie))
                          .toList(),
                    )
                  ],
                ),
              ),
      );

  Widget suggestButton() => Center(
        child: Container(
          margin: const EdgeInsets.only(top: 30, bottom: 32),
          width: 220,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(37),
            color: primaryColor,
          ),
          child: Center(
            child: Text(
              "Suggest Movie",
              style: avenirBook.copyWith(
                color: whiteColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      );
}
