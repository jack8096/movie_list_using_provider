import 'package:flutter/material.dart';
import 'package:my_start_app/movie_provider.dart';
import 'package:provider/provider.dart';

class MovieList extends StatelessWidget {
  const MovieList({super.key});

  @override
  Widget build(BuildContext context) {
    var favoriteMovie = context.watch<MovieProvider>().favoriteMovie;
    var data = context.watch<MovieProvider>().data;

    return ListView(
          
          children: 
            List.generate(10, (index) => 
            Container( height: 200, color: Colors.amber, margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: Padding(padding: const EdgeInsets.only(left:10 , right: 10),
            child: Row(
              children: [
              Text(data[index].title ),
              const Spacer(),
              IconButton(onPressed: (){


                if (!favoriteMovie.contains(data[index].title)) {
                  MovieProvider().addTo(data[index].title);
                  
                  context.read<MovieProvider>().addTo(data[index].title);
                }
                else {
                  MovieProvider().remove(data[index].title);
                  context.read<MovieProvider>().remove(data[index].title);
                }
                
                },
               icon: Icon(Icons.favorite , color: favoriteMovie.contains(data[index].title) ?Colors.red :Colors.white),)
              ],
            ),

),
            
            )  ),
            
        );
  }
}