import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Jayking',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'My Composition'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only (left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 12),
                Text("Now Playing",
                  style: TextStyle(fontFamily: 'Avenir',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    height: 27,
                    letterSpacing: 0.04,
                    color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                  Icon(Icons.share,
                      color: Colors.black,
                      size: 18),
                  ],
                ),
            ),
        Container(
        padding: const EdgeInsets.only(top: 167, left: 87),
        height: 200, width: 201,
          child: Image.asset("assets/images/Rectangle 7.png",
                    height: 100, width: 100,
                    alignment: Alignment.center,
              fit: BoxFit.contain,
              ),
        ),

      Container(
      padding: const EdgeInsets.only(top: 407, left: 37),
        width: 117, height: 23,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: const[
                Text("Rev Ryan Fray",
                 textAlign: TextAlign.left,
                  style: TextStyle(fontFamily: 'Avenir',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
            color: Colors.white),
                ),
                Text("Misconceptions",
                style: TextStyle(fontSize: 14,
                 color: Colors.black,
                  fontFamily: 'Avenir',
                  fontStyle: FontStyle.normal,
                  height: 19,
                  letterSpacing: 0.04,
                  fontWeight: FontWeight.w400,
                  ),
                ),
                Text('1hr 39min',
                style: TextStyle(fontFamily: 'Avenir',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 12,
                height: 16,
                color: Colors.red,
                letterSpacing: 0.04,
                ),
                ),
              ],
            ),
            const Icon(Icons.favorite, color: Colors.red, size: 20,),
          ],
        ),
      ),
    ],
    ),
    );
  }
}