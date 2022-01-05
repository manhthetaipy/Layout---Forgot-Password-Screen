import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        
        title: "Forgot your password"),
        
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
        leading: Icon(Icons.arrow_back_ios_outlined, color: Colors.white,),
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
         
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20),
              
              child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffe0e0e0),
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text("Please enter your to get your reset password code", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold))
              )
            ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 20, 60, 30),
              child: const TextField(
                
                decoration: InputDecoration(
                    
                  border: OutlineInputBorder(),
                  labelText: "Email*",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.0),
                  ),
                  labelStyle: TextStyle(
                  color:  Colors.blue, fontSize: 18
                )
                ),
              ),
            ),
            SizedBox(
              width: 380,
              height: 50, 
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
      );
  }
}
