import 'package:final_assessment/thirdScreen.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text(
          "User Login",
          // ignore: prefer_const_constructors
          style: TextStyle(
              backgroundColor: Colors.blue, color: Colors.white, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                controller: _name,
                decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: "Student Name",
                    hintText: "Enter your name",
                    border: UnderlineInputBorder()),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: _email,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    icon: Icon(Icons.alternate_email_outlined),
                    labelText: "Email Id",
                    hintText: "Enter your email id",
                    border: UnderlineInputBorder()),
              ),
              SizedBox(
                height: 50.0,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return thirdScreen();
                      }));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
