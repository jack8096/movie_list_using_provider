import 'dart:core';

import 'package:flutter/material.dart';
import 'package:my_start_app/favorate_movie_page.dart';
import 'package:my_start_app/movie_list.dart';
import 'package:my_start_app/movie_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<MovieProvider>(
    child: const MyApp(),
    create: (_) => MovieProvider(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            InkWell(
              onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const FavoriteMovieList()))
              ;},
              child: Container(color: Colors.redAccent, height: 100, margin:const EdgeInsets.fromLTRB(10, 10, 10, 10,),
            alignment: Alignment.center, 
            child:  Text('Favorite Movie' , style: TextStyle(color: Colors.white, fontSize: 22),),
            
            ),
            ),

            //MovieList()
            const Expanded(child: MovieList()),
            ],
        ));
  }
}
