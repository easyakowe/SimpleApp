import 'package:flutter/material.dart';

main () {
  // This is a function --- If a function is inside a class, its simply called a method
  // start rendering the user interface - to bring something on to the screen
  // widgets are basic user interface components with which you create your ...well your 
  // user interface - what the user sees on the screen
  runApp(MyApp());
}

// To begin creating our own widget - which is an object. An object should be instantiated within a class
// Flutter needs certain features in a class so as to be able to use it as a widget and to be able to draw 
// it to the screen
class MyApp extends StatefulWidget{
  @override
    State<StatefulWidget> createState() {
      return _MyAppState();
    }
}  

class _MyAppState extends State<MyApp>{ // This tells flutter that this MyAppState class belongs to our MyApp class
// This class name starting with an underscore tells flutter that this class should be unusable in other parts 
// of our code except in the main MyApp class

  build(context) {
    // the build method - flutter requires the build method whenever something is called as a widget
    // a widget must always return another widget until the final widget is shipped with flutter
    // return MaterialApp(); // - a special widget used to wrap your entire app, allows you to set 
    //theme, navigation. NEXT WE ADD INFORMATION TO OUR MATERIALAPP
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {},
                child: Text('Add Product'),
                ),  
              ),
            
            Card(
              child: Column(
                children: <Widget>[
                  Image.asset('assets/raspberry.jpg'),
                  Text('DS Paradise')
                ],
              ),
            ),
          ],
        )
      ),
    );
  }

}
