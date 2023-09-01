import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_start_app/movie_provider.dart';

class FavoriteMovieList extends StatelessWidget {
  const FavoriteMovieList({super.key});

  @override
  Widget build(BuildContext context) {
    var favoriteMovie = context.watch<MovieProvider>().favoriteMovie;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Favorate Movie'),
        ),
      body: ListView(
        children: List.generate(favoriteMovie.length, (index)  =>
      Container(height: 100,alignment: Alignment.centerLeft, color: Colors.amberAccent,
      
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: Container(margin: EdgeInsets.only(left: 10),
      child: Text(favoriteMovie[index].toString() ),)
      )
      )
      )
        );
  }
}