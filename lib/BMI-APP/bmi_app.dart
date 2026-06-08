import 'package:flutter/material.dart';

class BmiApp extends StatefulWidget {
  const BmiApp({super.key});

  @override
  State<BmiApp> createState() => _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {
  final TextEditingController weightController = TextEditingController();
  final TextEditingController feetController = TextEditingController();
  final TextEditingController inchController = TextEditingController();

  String result = "";

  Widget _customField({
    required TextEditingController controller,
    required String hint,
    required IconData icon,
  }) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade100,
        prefixIcon: Icon(icon, color: Colors.blue),
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  void calculateBMI() {
    String weightText = weightController.text.trim();
    String feetText = feetController.text.trim();
    String inchText = inchController.text.trim();

    if (weightText.isNotEmpty &&
        feetText.isNotEmpty &&
        inchText.isNotEmpty) {

      double weight = double.parse(weightText);
      double feet = double.parse(feetText);
      double inch = double.parse(inchText);

      double totalInches = (feet * 12) + inch;
      double heightCm = totalInches * 2.54;
      double heightM = heightCm / 100;

      double bmi = weight / (heightM * heightM);

      String msg;

      if (bmi < 18.5) {
        msg = "Underweight";
      } else if (bmi < 25) {
        msg = "Normal";
      } else {
        msg = "Overweight";
      }

      setState(() {
        result = "BMI: ${bmi.toStringAsFixed(2)}\n$msg";
      });
    } else {
      setState(() {
        result = "Please fill all fields";
      });
    }
  }

  @override
  void dispose() {
    weightController.dispose();
    feetController.dispose();
    inchController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffEAF4FF),
              Colors.white,
            ],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Container(
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 15,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  // Header Icon
                  const CircleAvatar(
                    radius: 35,
                    backgroundColor: Color(0xffEAF4FF),
                    child: Icon(
                      Icons.monitor_heart,
                      size: 40,
                      color: Colors.blue,
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    "BMI Calculator",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    "Track your Body Mass Index (BMI) to understand whether your weight is healthy according to your height.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 30),

                  _customField(
                    controller: weightController,
                    hint: "Enter Weight (KG)",
                    icon: Icons.monitor_weight_outlined,
                  ),

                  const SizedBox(height: 15),

                  _customField(
                    controller: feetController,
                    hint: "Enter Height (Feet)",
                    icon: Icons.height,
                  ),

                  const SizedBox(height: 15),

                  _customField(
                    controller: inchController,
                    hint: "Enter Height (Inches)",
                    icon: Icons.straighten,
                  ),

                  const SizedBox(height: 25),

                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton.icon(
                      onPressed: calculateBMI,
                      icon: const Icon(
                        Icons.calculate,
                        color: Colors.white,
                      ),
                      label: const Text(
                        "Calculate BMI",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: const Color(0xffEAF4FF),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.blue.shade100,
                      ),
                    ),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.analytics_outlined,
                          color: Colors.blue,
                          size: 30,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          result.isEmpty
                              ? "Your BMI result will appear here"
                              : result,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: result.isEmpty ? 15 : 20,
                            fontWeight: FontWeight.bold,
                            color: result.isEmpty
                                ? Colors.grey
                                : Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Divider(),

                  const SizedBox(height: 10),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "18.5",
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Underweight",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "18.5 - 24.9",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Normal",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "25+",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Overweight",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}