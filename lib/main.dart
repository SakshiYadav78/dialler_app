import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dialler App',
      theme: ThemeData(
        primaryColor:  Color(0xFFE1F5FE),
        scaffoldBackgroundColor: Color(0xFFFFFDE7),
        accentColor: Color(0xFFFFF9C4),
        fontFamily: "OverpassRegular",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text("Dialler Apps"),),body: app1(),);




  }
}
class app1 extends StatefulWidget {
  app1({Key key}) : super(key: key);

  @override
  _app1State createState() => _app1State();
}

class _app1State extends State<app1> {
  TextEditingController c1;
  @override
  void initState() {
    c1=new TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextField(controller: c1,),
      SizedBox(height: 40,),
      GestureDetector(
        onTap: (){
          calll();
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [new BoxShadow(
                color: Colors.black,
                blurRadius: 5.0,
              ),],
              gradient: LinearGradient(
                colors: [
                  const Color(0xFFFFF9C4),
                  const Color(0xFFE1F5FE)
                ],
              )),
          width: 100,
          child: Text(
            "CALL",

            textAlign: TextAlign.center,
          ),
        ),
      ),
    ],);
  }
  calll()
  {

String phoneno="tel:"+c1.text;
launch(phoneno);

  }
}


