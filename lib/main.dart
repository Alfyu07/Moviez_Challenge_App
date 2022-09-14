import 'package:flutter/material.dart';
import 'package:moviez_challenge/provider/movie_provider.dart';
import 'package:moviez_challenge/ui/pages/home_page.dart';
import 'package:moviez_challenge/ui/pages/search_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MovieProvider>(
          create: (BuildContext context) => MovieProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Moviez',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}
