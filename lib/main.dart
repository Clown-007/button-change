import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Color Changer',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _incrementButtonColor = Colors.blue;
  Color _decrementButtonColor = Colors.red;

  void _toggleIncrementButton() {
    setState(() {
      _incrementButtonColor = _incrementButtonColor == Colors.blue ? Colors.green : Colors.blue;
    });
  }

  void _toggleDecrementButton() {
    setState(() {
      _decrementButtonColor = _decrementButtonColor == Colors.red ? Colors.blue : Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Color Changer'),
      ),
      body: Center(
        child: const Text('Press the buttons to change their colors.'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _toggleDecrementButton,
            tooltip: 'Decrement',
            backgroundColor: _decrementButtonColor,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            onPressed: _toggleIncrementButton,
            tooltip: 'Increment',
            backgroundColor: _incrementButtonColor,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
