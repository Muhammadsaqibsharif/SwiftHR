import 'package:flutter/material.dart';
import 'package:swifthr/Screens/Components/PasswordField.dart';
import 'package:swifthr/Screens/splashScreen.dart';

import 'Components/CustomTextField.dart';
import 'Components/CutomButton.dart';
import 'Components/HeadingText.dart';
import 'Components/HexColor.dart';
class Reset_password extends StatelessWidget {
  const Reset_password({super.key});
  void _navigateToNextScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>SplashScreen(),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/Ellipse3.png"),
              alignment: Alignment.topRight
          ),

        ),
        child: Container(
          alignment: Alignment.topRight,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/Ellipse4.png"),
                alignment: Alignment.topRight
            ),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0,left: 40),
                    child: HeadingText(heading:"SwiftHR"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 80),
                        child: Center(child: Image(image: AssetImage("assets/images/ResetPassword.png"))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0,top: 8),
                        child: Container(
                          width: 300,
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: HeadingText(heading: "Reset Password for Login"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15,bottom: 15),
                                child: Text("New Password",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              PasswordField(),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,bottom: 10),
                                child: Text("Password",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              PasswordField(),
                              Padding(
                                padding: const EdgeInsets.only(top: 25,bottom: 10),
                              ),
                              CustomButton(btnText: "Confirm New Password",onPressed:_navigateToNextScreen)
                            ],
                          ),
                        ),
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
