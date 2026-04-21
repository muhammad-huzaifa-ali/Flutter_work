import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Buttons in Cards'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            // 🔵 Card 1 → Elevated Button
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                children: [

                  const Text("Elevated Button Card"),

                  const SizedBox(height: 10),

                  // 🔥 ElevatedButton → main action button
                  ElevatedButton(
                    onPressed: () {
                      print("Elevated Button Clicked");
                    },
                    child: const Text("Elevated"),
                  ),
                ],
              ),
            ),

            // 🟢 Card 2 → Text Button
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                children: [

                  const Text("Text Button Card"),

                  const SizedBox(height: 10),

                  // ⚡ TextButton → lightweight / link style button
                  TextButton(
                    onPressed: () {
                      print("Text Button Clicked");
                    },
                    child: const Text("Text"),
                  ),
                ],
              ),
            ),

            // 🟠 Card 3 → Outlined Button
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                children: [

                  const Text("Outlined Button Card"),

                  const SizedBox(height: 10),

                  // 🧩 OutlinedButton → secondary action with border
                  OutlinedButton(
                    onPressed: () {
                      print("Outlined Button Clicked");
                    },
                    child: const Text("Outlined"),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}