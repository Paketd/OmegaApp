

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final numberTextController = TextEditingController(text: "+7");
  final passwordTextController = TextEditingController();

  String? errorText;
  void auth(){
    final number = numberTextController.text;
    final password = passwordTextController.text;

    if (number == "+79001002030" && password == "admin"){
      errorText = null;
      Navigator.pushNamed(context, "/homepage");
    } else{
      errorText = "Wrong number or password";
    }
    setState(() {});
  }

  void forgotPassword(){ // todo
    print("reset password");
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final errorText = this.errorText;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(44, 182, 125, 1.0),
      resizeToAvoidBottomInset: false,
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/svg/logo.svg",
          ),
          const SizedBox(height: 50,),
          SvgPicture.asset(
            "assets/svg/logoCaRentName.svg",
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              boxShadow: const [
                BoxShadow(color: Colors.white, spreadRadius: 3),
              ],
            ),
            margin: const EdgeInsets.only(left: 46.5, right: 46.5, top: 50),
            height: 40,
            width: 300,
            padding: const EdgeInsets.only(top: 17),

            child: TextFormField(
              controller: numberTextController,
              keyboardType: TextInputType.number,
              maxLength: 12,
              maxLines: 1,
              style: theme.bodyMedium,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                border: InputBorder.none,
                counterText: "",
                hintText: "Your number",
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              boxShadow: const [
                BoxShadow(color: Colors.white, spreadRadius: 3),
              ],
            ),
            margin: const EdgeInsets.only(top: 30),
            height: 40,
            width: 300,
            padding: const EdgeInsets.only(top: 17),

            child: TextField(
              controller: passwordTextController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              maxLength: 20,
              maxLines: 1,
              style: theme.bodyMedium,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                border: InputBorder.none,
                counterText: "",
                hintText: "Your password",
              ),
            ),
          ),

          if (errorText != null) ...[
            const SizedBox(height: 5),
            Text(
              errorText,
              style: theme.bodySmall?.copyWith(
                color: Colors.red[800],
              ),
            ),
          ],
          Container(

            margin: const EdgeInsets.symmetric(horizontal: 100),
            child: TextButton(
              onPressed: forgotPassword,
              child: Text(
                "Forgot Password",
                style: theme.bodySmall,
              ),
            ),
          ),

          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                boxShadow: const [
                  BoxShadow(color: Color.fromRGBO(22, 22, 26, 1), spreadRadius: 3),
                ],
              ),
            height: 40,
            width: 300,
              margin: const EdgeInsets.only(top: 30),
              child: FloatingActionButton.extended(
                label: const Text(
                    "LOG IN",
                    style: TextStyle(fontWeight: FontWeight.bold)
                ),
                onPressed: auth,
                backgroundColor: const Color.fromRGBO(22, 22, 26, 1),
                foregroundColor: Colors.white,
              )
          )
        ],
      ),
    );
  }
}
