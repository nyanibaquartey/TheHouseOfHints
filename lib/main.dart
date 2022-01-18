import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Escape Room',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'The House of Hints'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _dblCounter = 0; //variable to store the power of 2 value of _counter

  //function to increase number by 1 when user presses button
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  //function to double number when user presses button
  void _doubleCounter() {
    setState(() {
      _dblCounter = _counter * _counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SafeArea(
        maintainBottomViewPadding: true,
        //Increment section
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Increment:',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: const EdgeInsets.all(40.0),
                  decoration: BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(width: 3.0, color: Colors.blue)),
                  child: Text(
                    '$_counter',
                    style: const TextStyle(
                        color: Colors.blueAccent, fontSize: 30.0),
                  ),
                ),
                const SizedBox(height: 20),
                FloatingActionButton.extended(
                  onPressed: _incrementCounter, //function call
                  tooltip: 'Increment',
                  label: const Text(
                    'Single increments',
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            //Power of 2 section
            Column(
              children: <Widget>[
                Column(
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      'Power of 2:',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(40.0),
                      decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.circular(50.0),
                          border: Border.all(width: 3.0, color: Colors.blue)),
                      child: Text(
                        '$_dblCounter',
                        style: const TextStyle(
                            color: Colors.blueAccent, fontSize: 30.0),
                      ),
                    ),
                    const SizedBox(height: 20),
                    FloatingActionButton.extended(
                      onPressed: _doubleCounter, //function call
                      tooltip: 'Power of 2',
                      label: const Text(
                        'Double the number',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
