import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'game.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "CashTales",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget activePage = Placeholder();

  @override
  void initState() {
    super.initState();
    activePage = homePage(true);
  }

  void switchPage() {
    setState(() {
      activePage = const GamePage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 224, 224, 224),
              Color.fromARGB(255, 104, 255, 129)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: activePage));
  }

  Widget homePage(bool opa) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text("CashTales",
          style: GoogleFonts.concertOne(
              fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold)),
      const Padding(padding: EdgeInsets.all(20)),
      Image.asset(
        "assets/images/cashtalesmainlogo.png",
        width: 300,
        height: 300,
      ),
      const Padding(padding: EdgeInsets.all(5)),
      Text("An interactive money management game",
          style: GoogleFonts.montserrat(
              fontSize: 16, color: Colors.black, fontStyle: FontStyle.italic)),
      const Padding(padding: EdgeInsets.all(20)),
      ElevatedButton(
        onPressed: () {
          switchPage();
        },
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.lightGreen)),
        child: Text(
          "Start Game",
          style: GoogleFonts.montserrat(fontSize: 18, color: Colors.black),
        ),
      )
    ]);
  }
}
