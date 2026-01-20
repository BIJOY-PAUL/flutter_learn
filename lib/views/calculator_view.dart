import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart' as Icons;
import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

//app lifecycle leanrning

class _CalculatorViewState extends State<CalculatorView> {
  late final AppLifecycleListener _listener;

  int x = 0;

  int y = 0;

  num z = 0;

  final displayOneController = TextEditingController();

  final displayTwoController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    displayOneController.text = x.toString();
    displayTwoController.text = y.toString();

    _listener = AppLifecycleListener(
      onShow: _onShow,
      onHide: _onHide,
      onRestart: _onRestart,
      onResume: _onResume,
      onInactive: _onInactive,
      onPause: _onPause,
      onDetach: _onDetach,
      onStateChange: _onStateChange,

      // onExitRequested: _onExitRequested,
    );
  }

  void _onShow() {
    print("App on show");
  }

  void _onHide() {
    print("App on hide");
  }

  void _onRestart() {
    print("App on restart");
  }

  void _onResume() {
    print("App on resume");
  }

  void _onInactive() {
    print("App on inactive");
  }

  void _onPause() {
    print("App on pause");
  }

  void _onDetach() {
    print("App on detach");
  }

  void _onStateChange(AppLifecycleState state) {
    print("App state changed to $state");
  }

  @override
  void dispose() {
    displayOneController.dispose();
    displayTwoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32.0),

      child: Column(
        children: [
          calculatorDisplay(
            hint: "Enter first number",
            controller: displayOneController,
          ),
          SizedBox(height: 10),
          calculatorDisplay(
            hint: "Enter second number",
            controller: displayTwoController,
          ),
          SizedBox(height: 40),
          Text(
            z.toString(),
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    z =
                        num.tryParse(displayOneController.text)! +
                        num.tryParse(displayTwoController.text)!;
                  });
                },
                child: Icon(Icons.CupertinoIcons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    z =
                        num.tryParse(displayOneController.text)! -
                        num.tryParse(displayTwoController.text)!;
                  });
                },
                child: Icon(Icons.CupertinoIcons.minus),
              ),

              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    z =
                        num.tryParse(displayOneController.text)! *
                        num.tryParse(displayTwoController.text)!;
                  });
                },
                child: Icon(Icons.CupertinoIcons.multiply),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    z =
                        num.tryParse(displayOneController.text)! /
                        num.tryParse(displayTwoController.text)!;
                  });
                },
                child: Icon(Icons.CupertinoIcons.divide),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    x = 0;
                    y = 0;
                    z = 0;
                    displayOneController.clear();
                    displayTwoController.clear();
                  });
                },
                child: Text("Clear"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class calculatorDisplay extends StatelessWidget {
  const calculatorDisplay({
    super.key,
    this.hint = "Enter a number",
    required this.controller,
  });

  final TextEditingController controller;

  final String? hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      autofocus: true,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.black, width: 3.0),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 6.0),
          borderRadius: BorderRadius.circular(10),
        ),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white),
      ),
    );
  }
}
