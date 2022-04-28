import 'package:flutter/material.dart';
import 'package:http_request/models/movie.dart';

class MovieDetail extends StatelessWidget {
  final Movie movie;
  final String imgPath = 'https://image.tmdb.org/t/p/w500/';

  MovieDetail(this.movie);

  @override
  Widget build(BuildContext context) {
    String img1;
    String img2;
    if (movie.posterPath != null) {
      img1 = imgPath + movie.posterPath;
    } else {
      img1 =
          'https://images.freeimages.com/images/large-previews/5eb/movie-clapboard-1184339.jpg';
    }
    if (movie.backdropPath != null) {
      img2 = imgPath + movie.backdropPath;
    } else {
      img2 =
          'https://images.freeimages.com/images/large-previews/5eb/movie-clapboard-1184339.jpg';
    }
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 11, 40, 65),
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(img2),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Image.network(img1),
              ),
              Text(
                movie.title,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                movie.releaseDate,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              Container(
                  margin: EdgeInsets.all(5),
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    movie.voteAverage.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  )),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Overview:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                margin: const EdgeInsets.only(left: 16, right: 16),
              ),
              Container(
                child: Text(
                  movie.overview,
                  textAlign: TextAlign.justify,
                ),
                margin: const EdgeInsets.only(top: 3, left: 16, right: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
