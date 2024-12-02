import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_architecture_example/Pages/counter_screen.dart';
import 'package:provider_architecture_example/Pages/counter_view_model.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterViewModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MVVM with Provider Example',
      home: CounterScreen(),
    );
  }
}
