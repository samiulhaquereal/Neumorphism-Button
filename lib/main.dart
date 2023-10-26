import 'package:flutter/material.dart';
import 'package:neumorphism/Neumorphism%20Button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
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

  bool _isElevated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              _isElevated = !_isElevated;
            });
          },
          child: NeumorphismButton(
            isElevated: _isElevated,
            height: 200,
            width: 200,
            color: Colors.grey[300],
            radius: 50,
            blurRadius: 15,
            TLshadowcolor: Colors.white,
            BRshadowcolor: Colors.grey[500],
            child: Center(child: Text('Click here',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey[700]),)),
          ),
        ),
      ),
    );
  }
}



