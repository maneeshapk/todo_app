import 'package:flutter/material.dart';
import 'package:todolist/addevent.dart';
import 'package:todolist/homepage.dart';
import 'package:todolist/routers.dart';
import 'package:todolist/showevent.dart';
import 'package:todolist/update.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routers.homepage,
      routes: {
        Routers.homepage:(context) => const Homepage(),
        Routers.showevent:(context) => const Showevent(),
        Routers.addevent:(context) => const Addevent(),
        Routers.update:(context) => const Update(),
      },
    );
  }
}