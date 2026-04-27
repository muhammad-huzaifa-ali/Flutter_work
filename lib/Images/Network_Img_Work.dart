
import 'package:flutter/material.dart';

class NetworkImgWork extends StatefulWidget {
  const NetworkImgWork({super.key});

  @override
  State<NetworkImgWork> createState() => _NetworkImgWorkState();
}

class _NetworkImgWorkState extends State<NetworkImgWork> {
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
          icon: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNVHpFv7MXvkq5Xvj-tqNs0zw5zxQtdP7AhQ&s"),
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
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSCG4uRk8DMnaX7Q-89SCv1T-yjSwqEv6i4Q&s"),
                height: 300,
              ),
            ),
          )

        ],
      ),
    );
  }
}
