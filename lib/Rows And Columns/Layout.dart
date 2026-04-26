import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('Layout Work'),
          titleTextStyle: TextStyle(color: Colors.white,),
          centerTitle: true,
          backgroundColor: Colors.amber,

        ),

         body: Stack(
           children: [
             Center(
               child: Container(
                 height: 100,
                 width: 100,
                 color: Colors.blue,
               ),
             ),

             Align(
               alignment: Alignment.centerLeft,
               child: Container(
                 height: 70,
                 width: 70,
                 color: Colors.green,
               ),
             ),
             Positioned(
               top: 15,
               right: 10,
               child: Container(
                 height: 50,
                 width: 50,
                 color: Colors.black,
               ),
             )


           ],
         ),

        // body: Padding(
        //   padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
        //   child: Row(
        //     children: [
        //       Container(
        //         width: 50,
        //         height: 50,
        //         decoration: BoxDecoration(
        //           shape: BoxShape.circle,
        //           color: Colors.orange,
        //         ),
        //       ),
        //
        //       SizedBox(
        //         width: 10,
        //       ),
        //
        //       Column(
        //         mainAxisSize: MainAxisSize.min,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Text('Contact Name',style: TextStyle(fontSize: 25 ,color: Colors.blue ,fontWeight: FontWeight.bold),),
        //           Text('Message'),
        //         ],
        //       ),
        //
        //       Spacer(flex: 2,),
        //
        //       Icon(Icons.call ,color: Colors.green,)
        //
        //     ],
        //
        //   ),
        // )

    );
  }}








    //   body: Column(
    //     spacing: 10,
    //     children: [
    //
    //       // ===================== Expanded  =====================
    //       Expanded(
    //         child: Container(
    //           color: Colors.blue,
    //           width: double.infinity,
    //           height: 200,
    //
    //         ),
    //       ),
    //
    //       Expanded(
    //         child: Container(
    //           color: Colors.brown,
    //           width: double.infinity,
    //           height: 200,
    //         ),
    //       ),
    //
    //     ],
    //   ),
    // );
      
    //   body: Row(
    //     spacing: 10,
    //      children: [
    //
    //   // ===================== Expanded  =====================
    //   Expanded(
    //     child: Container(
    //           color: Colors.blue,
    //           width: double.infinity,
    //           height: 200,
    //
    //         ),
    //   ),
    //
    //        Expanded(
    //          child: Container(
    //           color: Colors.brown,
    //           width: double.infinity,
    //           height: 200,
    //          ),
    //        ),
    //
    //      ],
    //   ),
    // );


 // Expanded and Flexible Both are same
           //  ===================== Flexible =====================
           // Flexible(
           //   fit: FlexFit.tight,
           //   child: Container(
           //     color: Colors.blue,
           //     width: double.infinity,
           //     height: 100,
           //  
           //   ),
           // ),
           //
           // Flexible(
           //   fit: FlexFit.tight,
           //   child: Container(
           //     color: Colors.brown,
           //     width: double.infinity,
           //     height: 200,
           //  
           //   ),
           // )
    //     ],
    //   ),
    // );
  // }
// }
