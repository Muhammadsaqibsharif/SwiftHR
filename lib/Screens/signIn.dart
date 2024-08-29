import 'package:flutter/material.dart';
import 'package:swifthr/Screens/Components/CustomTextField.dart';
import 'package:swifthr/Screens/Components/CutomButton.dart';
import 'package:swifthr/Screens/Components/HeadingText.dart';
import 'package:swifthr/Screens/Components/HexColor.dart';
import 'package:swifthr/Screens/Components/PasswordField.dart';
import 'package:swifthr/Screens/forgetPasswordScreen.dart';
class Sign_In extends StatelessWidget {
  const Sign_In({super.key});
void signIn(BuildContext context){

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
                        padding: const EdgeInsets.only(top: 50),
                        child: Center(child: Image(image: AssetImage("assets/images/SignIn.png"))),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Welcome to ",style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: HexColor('#042334')
                          ),),
                          HeadingText(heading: "SwiftHR")
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0,top: 8),
                        child: Container(
                          width: 267,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              HeadingText(heading: "Sign In"),
                              Padding(
                                padding: const EdgeInsets.only(top: 5,bottom: 5),
                                child: Text("Enter username or email address",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              CustomField(hintTxt: "Username or email address"),
                              Padding(
                                padding: const EdgeInsets.only(top: 5,bottom: 5),
                                child: Text("Enter password",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              PasswordField(),
                              Padding(
                                padding: const EdgeInsets.only(top: 5,bottom: 5),
                                child: Container(
                                  alignment: Alignment.bottomRight,
                                  child: InkWell(
                                    onTap: (){
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>ForgotPasswordScreen()));
                                    },
                                    child: Text("forgot password?",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              CustomButton(btnText: "Sign In",onPressed: signIn,)
              
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
