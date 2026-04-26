import 'package:flutter/material.dart';

class ListWork extends StatefulWidget {
  const ListWork({super.key});

  @override
  State<ListWork> createState() => _ListWorkState();
}

class _ListWorkState extends State<ListWork> {

  final List<Map<String , dynamic>> Users=
  [
    {'name': 'Huzaifa', 'role': 'Developer'},
    {'name': 'Ahmed', 'role': 'Developer'},
    {'name': 'Abrar', 'role': 'Developer'},
    {'name': 'Maaz', 'role': 'Developer'},
    {'name': 'Sarim', 'role': 'Developer'},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),


      // body: ListView(
      //   children: [
      //     ListTile(
      //       leading: Icon(Icons.person,color: Colors.blue,),
      //       title: Text('Huzaifa'),
      //       subtitle: Text('Developer'),
      //     ),
      //
      //     ListTile(
      //       leading: Icon(Icons.person,color: Colors.blue,),
      //       title: Text('Ali'),
      //       subtitle: Text('Designer'),
      //     ),
      //
      //     ListTile(
      //       leading: Icon(Icons.person,color: Colors.blue,),
      //       title: Text('Ahmed'),
      //       subtitle: Text('Tester'),
      //     ),
      //   ],
      // ),

      body: ListView.builder(
        itemCount: Users.length,
          itemBuilder: (context,index){
        return ListTile (
          leading: Icon(Icons.phone,color: Colors.green),
          title: Text(Users[index]['name']),
          subtitle: Text(Users[index]['role']),
        );
    }
      )

    );
  }
}
