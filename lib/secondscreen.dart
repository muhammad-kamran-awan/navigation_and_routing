import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/dream.jpg'),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                'This is Second Screen',
                style: TextStyle(
                  color: Colors.grey[150],
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.redAccent,
            ),
            backgroundColor: Colors.transparent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.skip_previous,
                                color: Colors.greenAccent,
                                size: 40,
                              ),
                              Text(
                                'Go Back',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.greenAccent),
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          border:
                              Border.all(color: Colors.greenAccent, width: 5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )));
  }
}
