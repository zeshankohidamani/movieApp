import 'package:flutter/material.dart';
import 'package:movie_app/Widgets/toprated.dart';
import 'package:movie_app/Widgets/trending.dart';
import 'package:movie_app/task.dart';
import 'package:movie_app/utils/text.dart';
import 'package:tmdb_api/tmdb_api.dart';
import 'Widgets/tv.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.green,
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List trendingmovies = [];
  List topRatedMovies = [];
  List tv = [];
  final String apikey = 'bbf10f305c9d680c4755782749cb0c70';
  final readaccesstoken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJiYmYxMGYzMDVjOWQ2ODBjNDc1NTc4Mjc0OWNiMGM3MCIsInN1YiI6IjYxNmQxZTg1ZmU2YzE4MDA2NjUxMzVjMCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.NGqa0sr2sHcJcH17WTmlcahG9gogVOQqzNkR4I1uZ7M';

  loadmovies() async {
    TMDB tmdbWithCustomLogs = TMDB(
      ApiKeys(apikey, readaccesstoken),
      logConfig: ConfigLogger(
        showLogs: true,
        showErrorLogs: true,
      ),
    );

    Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();
    Map topratedresult = await tmdbWithCustomLogs.v3.movies.getTopRated();
    Map tvresult = await tmdbWithCustomLogs.v3.tv.getPouplar();
    setState(() {
      trendingmovies = trendingresult['results'];
      topRatedMovies = topratedresult['results'];
      tv = tvresult['results'];
    });
    print(topratedresult);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadmovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: modified_text(
          text: "Flutter Movie App💖",
          color: Colors.white,
          size: 19,
        ),
      ),
      body: ListView(
        children: [
          TV(tv: tv),
          TopRated(toprated: topRatedMovies),
          TrendingMovies(
            trending: trendingmovies,
          ),
        ],
      ),
    );
  }
}
