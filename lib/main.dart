import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple/home.dart';
import 'package:simple/login_page.dart';
import 'package:simple/provider.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_)=>Providers())

      ],
      child: MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          'home':(context) =>Home()
        },
        home: LoginPage());
  }
}


