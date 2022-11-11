import 'dart:developer';

import 'package:customnavigatoion_bar/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'homepage.dart';
void main(){
  runApp(

    // we are calling provider before myapp because we can access it in entire project
    MultiProvider(
      providers: [
        //here we are initalizing the list of provider with class name
        ChangeNotifierProvider(create: (_) => pagechange()),
      ],
      child: const MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home: HomePage(),
    );
  }
}
