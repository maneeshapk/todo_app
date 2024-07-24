// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';

class Update extends StatefulWidget {
  const Update({super.key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {

  TextEditingController addevent = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 124, 165, 169),
      appBar: AppBar(title: const Text("UPDATE EVENT"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                controller: addevent,
                decoration: const InputDecoration(hintText: "Add event"),
              ),
            ),
            ElevatedButton(onPressed: (){



            }, child: const Text("Update"))
          ],
        ),
      )
    );
  }
}