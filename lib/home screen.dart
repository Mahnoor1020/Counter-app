import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0; // Basic property for counter

  void incrementCounter() {
    setState(() {
      counter++; // Increment the counter
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter--; // Decrement the counter but not below zero
      }
    });
  }

  void resetCounter() {
    setState(() {
      counter = 0; // Reset the counter to zero
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Counter App', style: TextStyle(color: Colors.red)),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
              child: Image.asset(
                'lib/assets/home1.jpeg', // Path to your background image
                fit: BoxFit.cover,
              ),

          ),
          // Main Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Counter --> $counter', // Using basic property directly
                  style: TextStyle(
                    color: Colors.purpleAccent,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40), // Space between counter and buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FloatingActionButton(
                      onPressed: decrementCounter,
                      child: Icon(Icons.remove),
                      backgroundColor: Colors.blueAccent,
                    ),
                    SizedBox(width: 16),
                    FloatingActionButton(
                      onPressed: incrementCounter,
                      child: Icon(Icons.add),
                      backgroundColor: Colors.blueGrey,
                    ),
                    SizedBox(width: 16),
                    FloatingActionButton(
                      onPressed: resetCounter,
                      child: Icon(Icons.restore_from_trash_outlined),
                      backgroundColor: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Credit Text at the Bottom
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Developed by Mahnoor',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
