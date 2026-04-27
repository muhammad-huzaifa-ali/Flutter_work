import 'package:flutter/material.dart';

class ImgWork extends StatefulWidget {
  const ImgWork({super.key});

  @override
  State<ImgWork> createState() => _ImgWorkState();
}

class _ImgWorkState extends State<ImgWork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('TECHORA STORE',
        style: TextStyle(
            color: Colors.white,
             fontWeight: FontWeight.w800,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,

        leading: IconButton(
          onPressed: () {},
          icon: Image.asset("assets/icons/Icon_Techora.jpg"),
        ),

        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.person ,color: Colors.white,fontWeight: FontWeight.w600),),

          SizedBox(width: 7,),

          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.white,fontWeight: FontWeight.w600)),

           SizedBox(width: 5,)
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
            child: Center(
              child: Container(
                  child: Image.asset("assets/images/heroimg.png"),
                height: 300,
              ),
            ),
          )

        ],
      ),
    );
  }
}
