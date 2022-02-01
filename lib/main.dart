import 'package:flutter/material.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  // const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Simple Calculator",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SimpleCalculator(),
    );
  }
}

class SimpleCalculator extends StatefulWidget {
  SimpleCalculator({Key? key}) : super(key: key);

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  String equation = "0";
  String result = "0";
  String expression = "";
  double equationFontSize = 38.0;
  double resultFontSize = 48.0;

  buttonPressed(String buttonText){
    setState(() {
      if(buttonText=="C"){

      }else if(buttonText==""){

      }
    });
  }

  Widget buildButton(
      String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      color: buttonColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
            side: BorderSide(
              color: Colors.white,
              width: 1,
              style: BorderStyle.solid,
            ),
          )),
          child: Text(
            buttonText,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.normal,
                color: Colors.white),
          ),
          onPressed: () => buttonPressed(buttonText),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Calculator",
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(
              equation,
              style: TextStyle(
                fontSize: equationFontSize,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(
              result,
              style: TextStyle(
                fontSize: resultFontSize,
              ),
            ),
          ),
          Expanded(
            child: Divider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Table(
                  children: [
                    TableRow(children: [
                      buildButton("C", 1, Colors.redAccent),
                      buildButton("⌫", 1, Colors.blue),
                      buildButton("÷", 1, Colors.blue),
                    ]),
                    TableRow(children: [
                      buildButton("7", 1, Colors.black54),
                      buildButton("8", 1, Colors.black54),
                      buildButton("9", 1, Colors.black54),
                    ]),
                    TableRow(children: [
                      buildButton("4", 1, Colors.black54),
                      buildButton("5", 1, Colors.black54),
                      buildButton("6", 1, Colors.black54),
                    ]),
                    TableRow(children: [
                      buildButton("1", 1, Colors.black54),
                      buildButton("2", 1, Colors.black54),
                      buildButton("3", 1, Colors.black54),
                    ]),
                    TableRow(children: [
                      buildButton(".", 1, Colors.black54),
                      buildButton("0", 1, Colors.black54),
                      buildButton("00", 1, Colors.black54),
                    ]),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildButton("x", 1, Colors.blue),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton("-", 1, Colors.blue),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton("+", 1, Colors.blue),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton("=", 1, Colors.redAccent),
                        // Padding(padding: EdgeInsets.all(1)),
                        // Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
