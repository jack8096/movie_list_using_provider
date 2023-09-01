import 'package:flutter/material.dart';

class MovieProvider extends ChangeNotifier{
  List<String> favoriteMovie = [];
  List<Movie>data = List.generate(10, (index) => Movie(title: 'Movie $index', duration: '120'));  

 void addTo(title){
  favoriteMovie.add(title);
  notifyListeners();
 }
  void remove(title){
  favoriteMovie.remove(title);
  notifyListeners();
  }

}





class Movie{final String title; final String duration; Movie({required this.title,
  required this.duration});}


