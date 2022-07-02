import 'package:flutter/material.dart';

class thirdScreen extends StatelessWidget {
  DateTime today = DateTime.now();
  String name;
  thirdScreen({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Hii, ${name}",
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              Image(
                image: NetworkImage(
                    "https://media.istockphoto.com/vectors/certificate-template-diploma-of-modern-design-or-gift-certificate-vector-id1135148181?s=612x612"),
                height: 300,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "You have successfully complete Hybrid Mobile App Development Course.",
                style: TextStyle(fontSize: 23),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 400,
                child: Text(
                  "Instructor Name",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                width: 400,
                child: Text(
                  "Pankaj Kapoor",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 150,
              ),
              SizedBox(
                width: 400,
                child: Text(
                  'Date :  ${today.day}-${today.month}-${today.year}',
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
