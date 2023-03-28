import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/image.jpg'),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                'This is First Screen',
                style: TextStyle(
                  color: Colors.grey[150],
                  fontSize: 30,
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
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/SecondScreen');
                      },
                      child: Container(
                        height: 50,
                        width: 275,
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_circle_right,
                                color: Colors.greenAccent,
                                size: 40,
                              ),
                              Text(
                                'Just Click Here',
                                style: TextStyle(
                                    fontSize: 30,
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
