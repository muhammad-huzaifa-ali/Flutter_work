import 'package:flutter/material.dart';

class Rows_Columns extends StatefulWidget {
  const Rows_Columns({super.key});

  @override
  State<Rows_Columns> createState() => _Rows_ColumnsState();
}

class _Rows_ColumnsState extends State<Rows_Columns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rows and Columns",style: TextStyle(
          color: Colors.white,
        ),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),

      // =========================================================
      // 🔹 TOPIC 1: ROW (Horizontal Layout)
      // =========================================================
      /*
      body: Container(
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            box(Colors.black),
            box(Colors.red),
            box(Colors.amber),
          ],
        ),
      ),
      */

      // =========================================================
      // 🔹 TOPIC 2: COLUMN (Vertical Layout)
      // =========================================================
      /*
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            box(Colors.black),
            box(Colors.red),
            box(Colors.amber),
          ],
        ),
      ),
      */
      // =========================================================
      //   Row me:
      // mainAxisAlignment → left/right control
      // crossAxisAlignment → up/down control
      //
      // Column me:
      // mainAxisAlignment → up/down control
      // crossAxisAlignment → left/right control

      // =========================================================

      // =========================================================
      // 🔹 TOPIC 3: SINGLECHILDSCROLLVIEW (Horizontal Scroll)
      // =========================================================
      /*
      body: Container(
        color: Colors.grey,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              box(Colors.black),
              box(Colors.red),
              box(Colors.amber),
              box(Colors.blue),
              box(Colors.purple),
              box(Colors.brown),
              box(Colors.pink),
            ],
          ),
        ),
      ),
      */
      // =========================================================
      // 🔹 TOPIC 3: SINGLECHILDSCROLLVIEW (Vertical Scroll)
      // =========================================================
      /*
      body: Container(
        color: Colors.grey,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Row(
            children: [
              box(Colors.black),
              box(Colors.red),
              box(Colors.amber),
              box(Colors.blue),
              box(Colors.purple),
              box(Colors.brown),
              box(Colors.pink),
            ],
          ),
        ),
      ),
      */

      // =========================================================
      // 🔹 TOPIC 4: WRAP (Auto Next Line / Responsive Layout)
      // =========================================================
      body: Padding(

        padding: const EdgeInsets.only(top: 8.0),
        child: Container(
          color: Colors.grey,
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [

              box(Colors.black),
              box(Colors.red),
              box(Colors.amber),
              box(Colors.blue),
              box(Colors.purple),
              box(Colors.brown),
              box(Colors.pink),
              box(Colors.teal),
              box(Colors.orange),
              box(Colors.green),
            ],
          ),
        ),
      ),
    );
  }

  // 🔹 Reusable Widget (Code clean rakhne ke liye)
  Widget box(Color color) {
    return Container(
      height: 50,
      width: 80,
      color: color,
    );
  }
}





