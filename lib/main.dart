import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
        
        child: Stack(
    
         
          children: <Widget>[
            
              Text("0"*10000, style: const TextStyle(color: Colors.lightGreen),),
              Center(
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 2.0,
                      sigmaY: 2.0
              
                    ),
                    // ignore: sized_box_for_whitespace
                    child:  Container(
                      width: 250,
                      height: 250,
                      child: const Center(child:  Text("C-NON Software",
                      style: TextStyle(fontSize: 25,
                      color: Colors.lightGreenAccent,
                      fontWeight: FontWeight.bold
                      ),
                      )
                      ),
                    ),
                  
                  ),
                ),
              ),

          ],
        ),
      ),
      
    );
  }
}
