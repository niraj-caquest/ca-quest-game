import 'package:flutter/material.dart';

void main() {
  runApp(const CAQuestApp());
  }

  class CAQuestApp extends StatelessWidget {
    const CAQuestApp({super.key});

      @override
        Widget build(BuildContext context) {
            return MaterialApp(
                  debugShowCheckedModeBanner: false,
                        title: 'CA Quest',
                              theme: ThemeData.dark(),
                                    home: const PuzzleLevel1(),
                                        );
                                          }
                                          }

                                          class PuzzleLevel1 extends StatefulWidget {
                                            const PuzzleLevel1({super.key});

                                              @override
                                                State<PuzzleLevel1> createState() => _PuzzleLevel1State();
                                                }

                                                class _PuzzleLevel1State extends State<PuzzleLevel1> {
                                                  String message = "Choose the correct answer";

                                                    void checkAnswer(String answer) {
                                                        if (answer == "Loan from Bank") {
                                                              setState(() {
                                                                      message = "✅ Correct! Loan from Bank is a Liability.";
                                                                            });
                                                                                } else {
                                                                                      setState(() {
                                                                                              message = "❌ Wrong! Try again.";
                                                                                                    });
                                                                                                        }
                                                                                                          }

                                                                                                            Widget optionButton(String text) {
                                                                                                                return Padding(
                                                                                                                      padding: const EdgeInsets.symmetric(vertical: 6),
                                                                                                                            child: ElevatedButton(
                                                                                                                                    onPressed: () => checkAnswer(text),
                                                                                                                                            child: Text(text),
                                                                                                                                                  ),
                                                                                                                                                      );
                                                                                                                                                        }

                                                                                                                                                          @override
                                                                                                                                                            Widget build(BuildContext context) {
                                                                                                                                                                return Scaffold(
                                                                                                                                                                      appBar: AppBar(
                                                                                                                                                                              title: const Text("CA Quest – Level 1"),
                                                                                                                                                                                      centerTitle: true,
                                                                                                                                                                                            ),
                                                                                                                                                                                                  body: Padding(
                                                                                                                                                                                                          padding: const EdgeInsets.all(20),
                                                                                                                                                                                                                  child: Column(
                                                                                                                                                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                                                                                                                                      children: [
                                                                                                                                                                                                                                                  const Text(
                                                                                                                                                                                                                                                                "Which of the following is a LIABILITY?",
                                                                                                                                                                                                                                                                              style: TextStyle(fontSize: 20),
                                                                                                                                                                                                                                                                                            textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                        ),
                                                                                                                                                                                                                                                                                                                    const SizedBox(height: 20),
                                                                                                                                                                                                                                                                                                                                optionButton("Cash"),
                                                                                                                                                                                                                                                                                                                                            optionButton("Building"),
                                                                                                                                                                                                                                                                                                                                                        optionButton("Loan from Bank"),
                                                                                                                                                                                                                                                                                                                                                                    optionButton("Furniture"),
                                                                                                                                                                                                                                                                                                                                                                                const SizedBox(height: 20),
                                                                                                                                                                                                                                                                                                                                                                                            Text(
                                                                                                                                                                                                                                                                                                                                                                                                          message,
                                                                                                                                                                                                                                                                                                                                                                                                                        style: const TextStyle(fontSize: 18),
                                                                                                                                                                                                                                                                                                                                                                                                                                      textAlign: TextAlign.center,
                                                                                                                                                                                                                                                                                                                                                                                                                                                  ),
                                                                                                                                                                                                                                                                                                                                                                                                                                                            ],
                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                          ),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                              );
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                }