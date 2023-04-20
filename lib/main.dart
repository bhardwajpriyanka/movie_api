import 'package:flutter/material.dart';
import 'package:movie_api/screen/home/provider/home_provider.dart';
import 'package:movie_api/screen/home/view/home_screen.dart';
import 'package:movie_api/screen/search/search_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) =>HomeProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) =>HomeScreen(),
          'search':(context) => const SearchScreen(),
        },
      ),
    ),
  );
}

