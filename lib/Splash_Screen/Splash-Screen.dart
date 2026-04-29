// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
// import 'package:practice_app_1/SignUp_Screen/Screen/sign_up_screen.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//
//   void initState() {
//
//     Future.delayed(
//         Duration(seconds: 6), () {
//       Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) => SignUpScreen()));
//     }
//     );
//     // TODO: implement initState
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       // backgroundColor: Color(0xffffffff),
//       backgroundColor: Colors.black,
//       body: Center(
//           child: Lottie.asset(
//             'assets/animation/ecom.json',
//             width: 400,
//             height: 400,
//             repeat: true,
//             reverse: true,
//             fit: BoxFit.cover,
//           )
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:practice_app_1/SignUp_Screen/Screen/sign_up_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _navigateToNext();
  }

  void _navigateToNext() async {
    await Future.delayed(const Duration(seconds: 5));

    if (mounted) {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 800),
          pageBuilder: (context, animation, secondaryAnimation) => const SignUpScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Lottie.asset(
          'assets/animation/ecom.json',
          width: 300,
          height: 300,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}