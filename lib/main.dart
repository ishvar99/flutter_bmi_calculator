import './providers/attributes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Attributes>.value(
      value: Attributes(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
              primaryColor: Color(0xFF0A0E21),
              scaffoldBackgroundColor: Color(0xFF0A0E21),
              textTheme: TextTheme(
                  display1: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF8D8E98),
                  ),
                  display2:
                      TextStyle(fontSize: 40, fontWeight: FontWeight.w900))),
          home: Home()),
    );
  }
}
