// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todolist/routers.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 103, 193, 173),
      appBar: AppBar(title: Center(child: Text("To-Do List")),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, Routers.addevent);
            }, child: Text("ADD EVENTS")),
            ElevatedButton(onPressed: (){
               Navigator.pushNamed(context, Routers.showevent);
            }, child: Text("SHOW EVENTS")),
          ],
        ),
      ),
    );
  }
}