import 'package:data_hora/pages/choose_location.dart';
import 'package:data_hora/pages/loading.dart';
import 'package:flutter/material.dart';
import 'package:data_hora/pages/home.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
  debugShowCheckedModeBanner: false,
));
