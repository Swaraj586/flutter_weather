import 'package:flutter/material.dart';

import 'weather_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String city = "Mumbai";
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  labelText: "Enter City",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      city = textEditingController.text;
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return WeatherScreen(
                          city: city,
                        );
                      }));
                    });
                  },
                  child: Icon(size: 100, color: Colors.white, Icons.search)),
            ],
          ),
        ),
      ),
    );
  }
}
