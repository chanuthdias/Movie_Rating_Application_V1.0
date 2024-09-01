import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Widgets/MovieSlider.dart';
import 'Widgets/TrendingSlider.dart';
import 'api/api.dart';
import 'models/movie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

late Future<List<Movie>> trendingMovies;



class _HomeScreenState extends State<HomeScreen> {

  void initState(){
    super.initState();
    trendingMovies = Api().getTrendingMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('FLICKER PLAY'),
        //title: Image.asset('assets/Movie rating app logo.png'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Trending Movies',
                style: GoogleFonts.aBeeZee(fontSize: 25),
              ),
              const SizedBox(height: 32),
              const TrendingSlider(),
              const SizedBox(height: 32),
              Text(
                'Top Rated Movies',
                style: GoogleFonts.aBeeZee(fontSize: 25),
              ),
              const SizedBox(height: 32),
              const MoviesSlider(),
              const SizedBox(height: 32),
              Text(
                'Upcoming Movies',
                style: GoogleFonts.aBeeZee(fontSize: 25),
              ),
              const SizedBox(height: 32),
              const MoviesSlider(),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}




