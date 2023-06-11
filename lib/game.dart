import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'scenarios.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  int currentStage = 0;
  int money = 500;
  int happiness = 0;
  int currentDilemma = 0;
  bool fadeOut = false;

  void finalResult(result, context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Result",
              style: GoogleFonts.montserrat(fontSize: 18, color: Colors.black)),
          content: Text(result),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.lightGreen)),
              child: Text("Back",
                  style: GoogleFonts.montserrat(
                      fontSize: 18, color: Colors.black)),
            )
          ],
        );
      },
    );
  }

  void makeChoice(Choice choice) {
    setState(() {
      fadeOut = true; // Fade out

      Future.delayed(const Duration(milliseconds: 300), () {
        setState(() {
          money += choice.moneyChange;
          happiness += choice.happinessChange;
          currentDilemma++;
          fadeOut = false; // Fade in
          if (currentDilemma > 3) {
            currentDilemma = 0;
            if (currentStage < stages.length - 1) {
              currentStage++;
              switch (currentStage) {
                case 1:
                  money += 10000;
                  break;
                case 2:
                  money += 12000;
                  break;
                case 3:
                  money += 15000;
                  break;
                case 4:
                  money += 50000;
              }
            } else {
              happiness += (money / 1000).round();
              String result;
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text("Game Over"),
                    content: Text(
                        "Final Money: \$${money.toString()}\nFinal Happiness: ${happiness.toString()}",
                        style: GoogleFonts.montserrat(
                            fontSize: 18, color: Colors.black)),
                    actions: [
                      ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.lightGreen)),
                        child: Text("Restart",
                            style: GoogleFonts.montserrat(
                                fontSize: 18, color: Colors.black)),
                        onPressed: () {
                          // Reset the game
                          setState(() {
                            currentStage = 0;
                            money = 500;
                            happiness = 0;
                          });
                          Navigator.of(context).pop();
                        },
                      ),
                      ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.lightGreen)),
                          child: Text("How did I do?",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, color: Colors.black)),
                          onPressed: () {
                            if (happiness >= 400 && happiness < 600) {
                              result =
                                  "You lived a happy and fulfilling life by managing your finances properly.";
                            } else if (happiness >= 600) {
                              result =
                                  "You know what is worth spending for in life, and have hence lived a wonderful life.";
                            } else {
                              result =
                                  "You were too stingy with your money at times, and you could have lived a happier life if you were less frugal.";
                            }
                            finalResult(result, context);
                          })
                    ],
                  );
                },
              );
            }
          }
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Scenario currentScenario = stages[currentStage][currentDilemma];

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 224, 224, 224),
          Color.fromARGB(255, 104, 255, 129)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: AnimatedOpacity(
          opacity: fadeOut ? 0.0 : 1.0,
          duration: const Duration(milliseconds: 300),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Stage: ${currentStage + 1}",
                    style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 16),
                Text("Money: \$${money.toString()}",
                    style: GoogleFonts.montserrat(
                        fontSize: 18, color: Colors.black)),
                const SizedBox(height: 16),
                Text("Happiness: ${happiness.toString()}",
                    style: GoogleFonts.montserrat(
                        fontSize: 18, color: Colors.black)),
                const SizedBox(height: 32),
                Text(currentScenario.description,
                    style: GoogleFonts.montserrat(
                        fontSize: 18, color: Colors.black)),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: ButtonStyle(backgroundColor:
                      MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return Colors
                          .grey; // Change to the desired color for disabled state
                    }
                    return Colors
                        .lightGreen; // Change to the desired color for enabled state
                  })),
                  onPressed: (money + currentScenario.choiceA.moneyChange >= 0)
                      ? () {
                          makeChoice(currentScenario.choiceA);
                        }
                      : null,
                  child: Text(currentScenario.choiceA.description,
                      style: GoogleFonts.montserrat(
                          fontSize: 18, color: Colors.black),
                      textAlign: TextAlign.center),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.lightGreen)),
                  onPressed: () => makeChoice(currentScenario.choiceB),
                  child: Text(currentScenario.choiceB.description,
                      style: GoogleFonts.montserrat(
                          fontSize: 18, color: Colors.black),
                      textAlign: TextAlign.center),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Scenario {
  final String description;
  final Choice choiceA;
  final Choice choiceB;

  Scenario({
    required this.description,
    required this.choiceA,
    required this.choiceB,
  });
}

class Choice {
  final String description;
  final int moneyChange;
  final int happinessChange;

  Choice({
    required this.description,
    required this.moneyChange,
    required this.happinessChange,
  });
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "CashTales",
    home: GamePage(),
  ));
}
