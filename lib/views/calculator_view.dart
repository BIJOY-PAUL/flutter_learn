import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(32.0),

      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 3.0),
                borderRadius: BorderRadius.circular(10),
              ),

              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 3.0),
                borderRadius: BorderRadius.circular(10),
              ),

              hintText: "Enater a Number",
              hintStyle: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 10),

          TextField(
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 3.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 3.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              hintText: "Enater b Number",
              hintStyle: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
