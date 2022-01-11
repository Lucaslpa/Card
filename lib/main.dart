
import 'package:flutter/material.dart';
import './components/CardMatch.dart';

void main() {
   runApp(const App());
}

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(home: Container(
      color: Colors.white,
      child:  const Scaffold( 
        body: CardMatch()
      ),
      
    ),);
  }
}

