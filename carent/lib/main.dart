import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const CaRentApp());
}

class CaRentApp extends StatelessWidget {
  const CaRentApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CaRent',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(44, 182, 125, 1.0),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.black,
            fontFamily: "Baloo",
            fontSize: 25,
          ),
            displayLarge: TextStyle(
              color: Color.fromRGBO(22, 22, 26, 1),
              fontFamily: "Baloo",
              fontSize: 60,
              fontWeight: FontWeight.w900,
              letterSpacing: 3.0,
            )
        ),
      ),
      home: const MyHomePage(title: 'CaRent'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body:
              Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/svg/logo.svg",
                  alignment: Alignment.center,
                ),
                const SizedBox(height: 50,),
                SvgPicture.asset(
                  "assets/svg/logoCaRentName.svg",
                  alignment: Alignment.center,
                ),
                const SizedBox(height: 50,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: const [
                      BoxShadow(color: Colors.white, spreadRadius: 3),
                    ],
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  height: 40,

                  child: TextFormField(
                    initialValue: "+7",
                    keyboardType: TextInputType.number,
                    maxLength: 12,
                    maxLines: 1,
                    style: theme.textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      counterText: "",
                      hintText: "Your number",
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: const [
                      BoxShadow(color: Colors.white, spreadRadius: 3),
                    ],
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  height: 40,
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    maxLength: 20,
                    maxLines: 1,
                    style: theme.textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      counterText: "",
                      hintText: "Your password",
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                TextButton(
                  onPressed: () {
                    // Respond to button press
                  },
                  child: const Text(
                      "Forgot Password",
                      style: TextStyle(
                          color: Colors.black38
                      ),
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: FloatingActionButton.extended(
                      label: const Text("LOG IN", style: TextStyle(fontWeight: FontWeight.bold)),
                      onPressed: () {  },
                      backgroundColor: const Color.fromRGBO(22, 22, 26, 1),
                      foregroundColor: Colors.white,
                    )
                )
              ],
            ),
    );
  }
}
