import 'package:flutter/material.dart';
import 'package:practice_app_1/SignUp_Screen/Helper_functions/custom_text_form_feild.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final numberController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey.shade100,

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 20),

              const Text(
                "Create Account",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),

              const Text(
                "Sign up to continue",
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 30),

              Form(
                key: _formKey,
                child: Column(
                  children: [

                    AppTextField.customTextFormField(
                      controller: nameController,
                      hintText: "Enter Name",
                      labelText: "Name",
                      prefixIcon: Icons.person,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Name required";
                        }
                        if (value.length < 5) {
                          return "Min 5 characters";
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 15),

                    AppTextField.customTextFormField(
                      controller: emailController,
                      hintText: "Enter Email",
                      labelText: "Email",
                      prefixIcon: Icons.email,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email required";
                        }
                        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return "Invalid email";
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 15),

                    AppTextField.customTextFormField(
                      controller: numberController,
                      hintText: "Enter Number",
                      labelText: "Phone",
                      prefixIcon: Icons.phone,
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Number required";
                        }
                        if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                          return "Only digits allowed";
                        }
                        if (value.length != 11) {
                          return "Enter 11 digit number";
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 15),

                    AppTextField.customTextFormField(
                      controller: passwordController,
                      hintText: "Enter Password",
                      labelText: "Password",
                      prefixIcon: Icons.lock,
                      isPassword: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password required";
                        }
                        if (value.length < 6) {
                          return "Min 6 characters";
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 25),

                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Success 🎉")),
                            );
                          }
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}