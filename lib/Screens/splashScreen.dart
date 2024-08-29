import 'package:flutter/material.dart';
import 'package:swifthr/Screens/signIn.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Image.asset(
                  "assets/images/Ellipse2.png",
                  fit: BoxFit.contain,
                ),
              ),
            Image.asset(
              'assets/images/Ellipse1.png',
              fit: BoxFit.contain,
            ),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>Sign_In()));
              },
              child: Text(
                'SwiftHR',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
