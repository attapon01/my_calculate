import 'package:flutter/material.dart';
import 'numpad_number.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculate App',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Calculate(),
    );
  }
}

class Calculate extends StatefulWidget {
  const Calculate({super.key});

  @override
  State<Calculate> createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculate'),
        centerTitle: true,
      ),
      body:Stack(
        children: [
          Opacity(child: Image.asset('assets/img/big2.png'),opacity: 0.15,),
          Column(
            children: [
              Answer(),
              NumpadNumber()
            ],
          ),
        ],
      )
    );
  }


}
