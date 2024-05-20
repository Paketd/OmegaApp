import 'package:flutter/material.dart';
import "/icons/app_icons.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(AppIcons.location),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.wheel),
            label: 'Vehicles',
          ),
          BottomNavigationBarItem(
            icon: Icon(AppIcons.account),
            label: 'Account',
          ),
        ],
      ),
      // body:

      // FloatingActionButton.extended(
      //       label: const Text("dev. back", style: TextStyle(fontWeight: FontWeight.bold)),
      //       onPressed: () {
      //         Navigator.pop(context);
      //       },
      //       backgroundColor: const Color.fromRGBO(22, 22, 26, 1),
      //       foregroundColor: Colors.white,
      // )
    );
  }
}
