import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      } else {
        _counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My ++  Count'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "นับไปแล้ว $_counter ครั้ง",
            ),
            ElevatedButton(
              onPressed: incrementCounter,
              child: const Icon(Icons.add),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 236, 217, 18)),
              ),
            ),
            ElevatedButton(
              onPressed: decrementCounter,
              child: const Icon(Icons.remove),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color.fromARGB(255, 230, 159, 8)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
