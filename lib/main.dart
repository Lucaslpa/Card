
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/Encounter.dart';  
import './screens/Home.dart';

void main() {
   runApp(const App());
}

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF00A6FF),
          onPrimary: Color(0xFF00A6FF),
          surface: Color(0xFFF5F5F5),
          onSurface: Color(0xFFF5F5F5),
          background: Color(0xFFFCFCFC),
          onBackground: Color(0xFFFDFDFD),
          error: Color(0xFFB00020),
          onError: Color(0xFFB00020),
          brightness: Brightness.light,
        ),
        appBarTheme:  const AppBarTheme(systemOverlayStyle:  SystemUiOverlayStyle(statusBarColor: Colors.black)
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),  // Encounter
    );
  }
}

