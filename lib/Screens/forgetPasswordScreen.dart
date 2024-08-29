import 'package:flutter/material.dart';
import 'package:swifthr/Screens/otpVerificationScreen.dart';
import 'Components/CustomTextField.dart';
import 'Components/CutomButton.dart';

class ForgotPasswordScreen extends StatelessWidget {
  void _navigateToNextScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => OtpVerification(),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Ellipse3.png'),
            alignment: Alignment.topRight,
            scale: 1.1,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Ellipse4.png'),
              alignment: Alignment.topRight,
              scale: 1.1,
            ),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 30, top: 35, bottom: 40),
                      child: Text(
                        'SwiftHR',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 22,
                          color: Color(0xff042334),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'assets/images/Group.png',
                          width: 200,
                          height: 200,
                          fit: BoxFit.contain,
                        ),
                        Image.asset(
                          'assets/images/forgot.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff042334),
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: Text(
                        'Enter email address',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          color: Color(0xff042334),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: CustomField(hintTxt: "email address"),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Didn't Receive Password Reset Link?",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      color: Color(0xff042334),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomButton(btnText: 'Reset Password',onPressed:_navigateToNextScreen,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
