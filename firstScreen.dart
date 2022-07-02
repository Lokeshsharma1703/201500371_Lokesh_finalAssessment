// ignore_for_file: prefer_const_constructors

import 'package:final_assessment/secondScreen.dart';
import 'package:flutter/material.dart';

class getStarted extends StatelessWidget {
  const getStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Training",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          Container(
            margin: const EdgeInsets.only(
              top: 40,
            ),
            child: SizedBox(
              child: Text(
                "TRAINING",
                style: TextStyle(fontSize: 50, color: Colors.purple),
              ),
            ),
          ),
          Container(
              child: Image(
            image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4X3nAgAccumKzfzccdxkGzz8zLGfkBfjACg&usqp=CAU"),
            height: 400,
            width: 400,
          )),
          Center(
            child: SizedBox(
              height: 60,
              width: 270,
              child: ElevatedButton(
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return login();
                  }));
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
