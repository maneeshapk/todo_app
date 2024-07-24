import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:todolist/routers.dart';

class Showevent extends StatefulWidget {
  const Showevent({super.key});

  @override
  State<Showevent> createState() => _ShoweventState();
}

class _ShoweventState extends State<Showevent> {

  final dataevent=FirebaseFirestore.instance.collection("events");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 124, 165, 169) ,
      appBar: AppBar(title: const Text("SHOW EVENTS"),
      ),
     body: StreamBuilder(stream: dataevent.snapshots(),
      builder:(context, snapshot) {
        if(snapshot.hasData){
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder:(context, index) {
              final DocumentSnapshot inputdata= snapshot.data!.docs[index];
              return  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(inputdata["Addevents"], style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  
                  ElevatedButton(onPressed: ()async{
                    await FirebaseFirestore.instance.doc("events/${inputdata.id}").delete();

                  }, child: const Text("Delete")),


                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, Routers.update);
                  }, child: const Text("Edit"))
                ],
              );
            },);
        }
        return const Text("No Data");
      },
      
      
      
      ),
      
    
    );
  }
}