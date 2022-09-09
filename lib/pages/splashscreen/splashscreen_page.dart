import 'package:copa_mundo_app/routes/routes.dart';
import 'package:flutter/material.dart';

class SplashscreenPage extends StatelessWidget {
  const SplashscreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2)).then((value) =>
        Navigator.pushNamedAndRemoveUntil(
            context, Routes.home, (route) => false));
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/splashscreen.png',
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 20,
              child: SizedBox(
                  width: size.width,
                  child: const Center(
                      child: LinearProgressIndicator(
                          backgroundColor: Color(0xFF51061a),
                          color: Colors.white))),
            )
          ],
        ),
      ),
    );
  }
}
