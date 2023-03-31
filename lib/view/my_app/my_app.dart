import 'package:flutter/material.dart';
import 'package:solid_test_task/view/home/my_home_screen.dart';


/// MyApp is the base class , that start the app
class MyApp extends StatelessWidget {
  /// Constructor for MyApp class
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Solid',
      home: MyHomeScreen(),
    );
  }
}
