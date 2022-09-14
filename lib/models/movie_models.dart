class MovieModel {
  String title;
  int rating;
  List<String> genres;
  String description;
  String studio;
  String imgUrl;

  MovieModel({
    required this.title,
    required this.rating,
    required this.genres,
    required this.description,
    required this.studio,
    required this.imgUrl,
  });
}

List<MovieModel> movies = [
  MovieModel(
    title: "John Wick 4",
    rating: 5,
    genres: ["Action", "Crime"],
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tempus nunc eget quam sagittis dignissim. Vivamus aliquam luctus fermentum",
    studio: "Summit Entertainment",
    imgUrl: "assets/images/image_john_wick.png",
  ),
  MovieModel(
    title: "Bohemian",
    rating: 3,
    genres: ["Action", "Crime"],
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tempus nunc eget quam sagittis dignissim. Vivamus aliquam luctus fermentum",
    studio: "20th Fox Century",
    imgUrl: "assets/images/image_bohemian.png",
  ),
  MovieModel(
    title: "Mulan Session",
    rating: 3,
    genres: ["History", "War"],
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tempus nunc eget quam sagittis dignissim. Vivamus aliquam luctus fermentum",
    studio: "Disney",
    imgUrl: "assets/images/image_mulan.png",
  ),
  MovieModel(
    title: "Beauty & Beast",
    rating: 5,
    genres: ["Sci-Fiction"],
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tempus nunc eget quam sagittis dignissim. Vivamus aliquam luctus fermentum",
    studio: "Disney",
    imgUrl: "assets/images/image_beauty_and_beast.png",
  ),
  MovieModel(
    title: "The Dark II",
    rating: 5,
    genres: ["Horror"],
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tempus nunc eget quam sagittis dignissim. Vivamus aliquam luctus fermentum",
    studio: "HJB Filmproduktion",
    imgUrl: "assets/images/image_the_dark_two.png",
  ),
  MovieModel(
    title: "The Dark Knight",
    rating: 5,
    genres: ["Heroes"],
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tempus nunc eget quam sagittis dignissim. Vivamus aliquam luctus fermentum",
    studio: "HJB Filmproduktion",
    imgUrl: "assets/images/image_the_dark_knight.png",
  ),
  MovieModel(
    title: "The Dark Tower",
    rating: 4,
    genres: ["Action"],
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tempus nunc eget quam sagittis dignissim. Vivamus aliquam luctus fermentum",
    studio: "HJB Filmproduktion",
    imgUrl: "assets/images/image_the_dark_tower.png",
  )
];
