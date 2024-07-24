// ignore_for_file: use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Addevent extends StatefulWidget {
  const Addevent({super.key});

  @override
  State<Addevent> createState() => _AddeventState();
}

class _AddeventState extends State<Addevent> {
  TextEditingController addevent = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 152, 177, 167),
        appBar: AppBar(
          title: const Center(child: Text("ADD EVENT")),
        ),
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
              ElevatedButton(
                  onPressed: () async {
                    if (addevent.text.trim().isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Please enter the event")));
                    } else {
                      await FirebaseFirestore.instance
                          .collection("events")
                          .add({
                        "Addevents": addevent.text.trim(),
                      });
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("Event added successfully")));
                      addevent.clear();
                    }
                  },
                  child: const Text("Submit"))
            ],
          ),
        ));
  }
}
