import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Simple Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
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
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: ListView(children: [
          Container(
            height: 100,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "0",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "0",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 80,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Container(
            height: 100,
          ),
          Divider(
            thickness: 5,
          ),
          Container(
            height: 84,
          ),
          Table(children: [
            TableRow(children: [
              Table(
                columnWidths: {
                  0: FlexColumnWidth(3),
                  1: FlexColumnWidth(1),
                },
                children: [
                  TableRow(children: [
                    Table(
                      children: [
                        TableRow(children: [
                          Container(
                            height: 80,
                            color: Colors.red,
                            margin: EdgeInsets.only(
                              right: 3,
                              bottom: 3,
                            ),
                            child: Center(
                              child: Text(
                                "C",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            color: Colors.blue,
                            margin: EdgeInsets.only(
                              right: 3,
                              bottom: 3,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.backspace,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            color: Colors.blue,
                            margin: EdgeInsets.only(
                              right: 3,
                              bottom: 3,
                            ),
                            child: Center(
                                child: Text(
                              "/",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            )),
                          ),
                        ]),
                        TableRow(children: [
                          Container(
                            height: 80,
                            color: Colors.grey,
                            margin: EdgeInsets.only(
                              right: 3,
                              bottom: 3,
                            ),
                            child: Center(
                              child: Text(
                                "7",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            color: Colors.grey,
                            margin: EdgeInsets.only(
                              right: 3,
                              bottom: 3,
                            ),
                            child: Center(
                                child: Text(
                              "8",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            )),
                          ),
                          Container(
                            height: 80,
                            color: Colors.grey,
                            margin: EdgeInsets.only(
                              right: 3,
                              bottom: 3,
                            ),
                            child: Center(
                                child: Text(
                              "9",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            )),
                          ),
                        ]),
                        TableRow(children: [
                          Container(
                            height: 80,
                            color: Colors.grey,
                            margin: EdgeInsets.only(
                              right: 3,
                              bottom: 3,
                            ),
                            child: Center(
                              child: Text(
                                "4",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            color: Colors.grey,
                            margin: EdgeInsets.only(
                              right: 3,
                              bottom: 3,
                            ),
                            child: Center(
                                child: Text(
                              "5",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            )),
                          ),
                          Container(
                            height: 80,
                            color: Colors.grey,
                            margin: EdgeInsets.only(
                              right: 3,
                              bottom: 3,
                            ),
                            child: Center(
                                child: Text(
                              "6",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            )),
                          ),
                        ]),
                        TableRow(children: [
                          Container(
                            height: 80,
                            color: Colors.grey,
                            margin: EdgeInsets.only(
                              right: 3,
                              bottom: 3,
                            ),
                            child: Center(
                              child: Text(
                                "1",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            color: Colors.grey,
                            margin: EdgeInsets.only(
                              right: 3,
                              bottom: 3,
                            ),
                            child: Center(
                                child: Text(
                              "2",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            )),
                          ),
                          Container(
                            height: 80,
                            color: Colors.grey,
                            margin: EdgeInsets.only(
                              right: 3,
                              bottom: 3,
                            ),
                            child: Center(
                                child: Text(
                              "3",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            )),
                          ),
                        ]),
                        TableRow(children: [
                          Container(
                            height: 80,
                            color: Colors.grey,
                            margin: EdgeInsets.only(
                              right: 3,
                            ),
                            child: Center(
                              child: Text(
                                ".",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 80,
                            color: Colors.grey,
                            margin: EdgeInsets.only(
                              right: 3,
                            ),
                            child: Center(
                                child: Text(
                              "0",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            )),
                          ),
                          Container(
                            height: 80,
                            color: Colors.grey,
                            margin: EdgeInsets.only(
                              right: 3,
                            ),
                            child: Center(
                                child: Text(
                              "00",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            )),
                          ),
                        ]),
                      ],
                    ),
                    Table(
                      children: [
                        TableRow(children: [
                          Container(
                            height: 80,
                            margin: EdgeInsets.only(
                              bottom: 3,
                            ),
                            color: Colors.blue,
                            child: Center(
                              child: Text(
                                "x",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          )
                        ]),
                        TableRow(children: [
                          Container(
                            height: 80,
                            margin: EdgeInsets.only(
                              bottom: 3,
                            ),
                            color: Colors.blue,
                            child: Center(
                              child: Text(
                                "-",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          )
                        ]),
                        TableRow(children: [
                          Container(
                            height: 80,
                            margin: EdgeInsets.only(
                              bottom: 3,
                            ),
                            color: Colors.blue,
                            child: Center(
                              child: Text(
                                "+",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          )
                        ]),
                        TableRow(children: [
                          Container(
                            height: 163,
                            color: Colors.red,
                            child: Center(
                              child: Text(
                                "=",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ])
                      ],
                    )
                  ])
                ],
              ),
            ]),
          ]),
        ])

// This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
