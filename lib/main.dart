import 'package:flutter/material.dart';
import 'package:sassty/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        primaryColor: Colors.pinkAccent[900],
        // unselectedWidgetColor: Colors.blue
        primaryIconTheme: IconThemeData(color: Colors.pink),
        iconTheme: IconThemeData(color: Colors.pink),
        textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(
          backgroundColor: Colors.purple[400]
        ))

      ),
      home: MyHomePage(title: 'Sassty'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title,style: TextStyle(color: Colors.pink,fontSize: 24,),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
          IconButton(icon: Icon(Icons.shopping_basket_outlined), onPressed: (){}),
        ],
      ),
      body: HomePage(),
    );
  }
}
