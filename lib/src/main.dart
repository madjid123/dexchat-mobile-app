import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'CustomWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Color.fromARGB(255, 23, 253, 169)),
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
  GlobalKey<ScaffoldState> _key = GlobalKey();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Color.fromARGB(0, 39, 37, 37),
        //   title: Center(child: CustomWidget()),
        //   shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.all(Radius.circular(30))),
        //   actions: [],
        // ),
        key: _key,
        backgroundColor: Color.fromARGB(255, 34, 34, 37),
        body: Align(
            alignment: Alignment.topCenter,
            child: Column(children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(10, 60, 10, 10),
                padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(38, 98, 98, 98)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      OutlinedButton(
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.menu_rounded,
                              size: 24,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () => _key.currentState?.openDrawer(),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0x00000000)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20))))),
                      CustomWidget(),
                      Text(
                        "hello World",
                        style: TextStyle(color: Colors.white),
                      )
                    ]),
              ),
              Expanded(
                  child: Container(
                // color: Color.fromARGB(36, 80, 80, 80),

                margin: EdgeInsets.all(10),
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(
                        width: 3.0, color: Color.fromARGB(0, 80, 80, 80)),
                    color: Color.fromARGB(39, 101, 101, 101)),
                child: Expanded(
                    child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text('Login',
                        style: GoogleFonts.poppins(
                          color: Color(0xFFE4E4E4),
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        )),
                    Container(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          style: TextStyle(color: Color(0xFFE4E4E4)),
                          decoration: InputDecoration(
                            focusColor: Color.fromARGB(255, 34, 255, 156),
                            fillColor: Colors.white,
                            prefixIconColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 34, 255, 156),
                                    width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 253, 251, 250),
                                  width: 2),
                              // borderRadius: BorderRadius.circular(20),
                            ),
                            alignLabelWithHint: true,
                            // labelText: "Name",
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 34, 255, 156)),

                            hintText: "Enter your name",
                            hintStyle: TextStyle(color: Colors.grey[500]),
                          ),
                          onChanged: (value) {
                            print(value);
                          },
                        ))
                  ],
                )),
              ))
            ])),
        drawer: Container(
          margin: EdgeInsets.only(top: 50),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Drawer(
            backgroundColor: Color.fromARGB(255, 31, 33, 33),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 31, 33, 33),
                      borderRadius: BorderRadius.circular(20)),
                  child: Text('Drawer Header',
                      style: TextStyle(color: Colors.white)),
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
                ListTile(
                    title: const Text('Item 2'),
                    onTap: () {
                      Navigator.pop(context);
                    }),
              ],
            ),
          ),
        ));
  }
}
