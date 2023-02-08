import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'BMI Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var feetHeightController = TextEditingController(); //takes feet height
  var inchHeightController = TextEditingController(); // takes inch height
  var weightContorller = TextEditingController(); //takes weight

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('BMI Calculator')),
        ),
        body: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'BMI',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                TextField(
                  controller: weightContorller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text("Enter Your weight in kg"),
                    prefixIcon: Icon(Icons.line_weight),
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                TextField(
                  controller: feetHeightController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text("Enter Your height in feet"),
                    prefixIcon: Icon(Icons.man),
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                TextField(
                  controller: inchHeightController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text("Enter Your height in inch"),
                    prefixIcon: Icon(Icons.man_2_sharp),
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                SizedBox(
                  height: 41,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Calculate"),
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  'Your BMI:',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}