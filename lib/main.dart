import 'package:counter_bloc/Cubit/counter_cubit.dart';
import 'package:counter_bloc/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bloc and Cubit Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home:  const HomePage(),
          );
  }
}