class Movie {
  late int id;
  late String title;
  late double voteAverage;
  late String overview;
  late String posterPath;
  late String backdropPath;
  late String releaseDate;

  Movie(this.id, this.title, this.voteAverage, this.overview, this.posterPath,
      this.backdropPath, this.releaseDate);

  Movie.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    title = parsedJson['title'];
    voteAverage = parsedJson['vote_average'] * 1.0;
    overview = parsedJson['overview'];
    posterPath = parsedJson['poster_path'];
    releaseDate = parsedJson['release_date'];
    backdropPath = parsedJson['backdrop_path'];
  }
}
