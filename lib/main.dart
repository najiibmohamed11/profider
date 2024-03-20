import 'package:flutter/material.dart';
import 'package:profider_learning/home.dart';
import 'package:profider_learning/numberprofider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>Numberprofider())
      ],
      child: MaterialApp(home: Homescreen()));
  }
}
