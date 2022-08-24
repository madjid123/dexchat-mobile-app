import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import "CustomWidget.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Color(0xFF362929)),
      home: MyHomePage(title: 'dexchat Hello'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 97, 97, 97),
        title: Center(child: CustomWidget()),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30))),
        actions: [],
      ),

      backgroundColor: Color.fromARGB(255, 29, 29, 31),

      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          widthFactor: 50,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('You have pushed the button this many times:',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Color.fromARGB(255, 202, 202, 202))),
                Text('$_counter',
                    style: GoogleFonts.poppins(
                        color: Color(0xFFE4E4E4), fontSize: 40)),
                Container(
                    padding: EdgeInsets.all(50.0),
                    margin: EdgeInsets.all(50),
                    child: TextField(
                      style: TextStyle(color: Color(0xFFE4E4E4)),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        alignLabelWithHint: true,
                        labelText: "Name",
                        hintText: "Enter your name",
                        hintStyle: TextStyle(color: Colors.grey[500]),
                      ),
                      onChanged: (value) {
                        print(value);
                      },
                    ))
              ],
            ),
          )),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 20, 100, 100)),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              tileColor: Color.fromARGB(255, 20, 100, 100),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
