import 'package:flutter/material.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String input = "";
  String result = "0";
  void onButtonPressed(String value) {
    setState(() {
      if (value == "C") {
        input = "";
        result = "0";
      } else if (value == "=") {
        try {
          result = evaluateExpression(input);
        } catch (e) {
          result = "Xato";
        }
      } else {
        input += value;
      }
    });
  }

  String evaluateExpression(String expression) {
    if (expression.contains("+")) {
      List<String> parts = expression.split("+");
      double sum = double.parse(parts[0]) + double.parse(parts[1]);
      return sum.toString();
    } else if (expression.contains("-")) {
      List<String> parts = expression.split("-");
      double difference = double.parse(parts[0]) - double.parse(parts[1]);
      return difference.toString();
    } else if (expression.contains("x")) {
      List<String> parts = expression.split("x");
      double product = double.parse(parts[0]) * double.parse(parts[1]);
      return product.toString();
    } else if (expression.contains("/")) {
      List<String> parts = expression.split("/");
      double quotient = double.parse(parts[0]) / double.parse(parts[1]);
      return quotient.toStringAsFixed(2);
    }
    return "Xato";
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(color: Colors.deepOrange.shade400),
              child: Column(
                children: [
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Text(
                        "Calculator",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 35, top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          input,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 70,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          result,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  _buildButtonColumn(["C", "7", "4", "1", "+/-"]),
                  _buildButtonColumn(["()", "8", "5", "2", "0"]),
                  _buildButtonColumn(["%", "9", "6", "3", "."]),
                  _buildButtonColumn(["/", "x", "-", "+", "="]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonColumn(List<String> buttons) {
    return Expanded(
      child: Column(
        children: buttons.map((button) {
          return Expanded(
            child: GestureDetector(
              onTap: () => onButtonPressed(button),
              child: Center(
                child: Text(
                  button,
                  style: TextStyle(
                    fontSize: 55,
                    color: button == "C"
                        ? Colors.deepOrange.shade400
                        : Colors.black,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
