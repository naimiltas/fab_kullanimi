import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'FAB Kullanımı'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           TextField(
            decoration: InputDecoration(
              hintText: "Yaziniz",
            )
           ),
            FloatingActionButton(
        onPressed: (){
          print("Fab 2 tiklandi");
        },
        tooltip: "Fab2",
        child: const Icon(Icons.print),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ), 
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("Fab1 tiklandi");
        },
        tooltip: "Fab1",
        child: const Icon(Icons.audiotrack),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.pinkAccent,
      ), 
    );
  }
}
