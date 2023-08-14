import 'package:flutter/material.dart';
import 'package:orinova_education_app/ColorClass.dart';
import 'package:orinova_education_app/Screens/tabs.dart';


void main() {
  //SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
     theme: ThemeData(
 
    textTheme:
        Theme.of(context).textTheme.apply(
      bodyColor: Color(0xFF303841), //<-- SEE HERE
      displayColor:Color(0xFF303841) , //<-- SEE HERE

  ),
        //primaryColor:ColorClass.customColors['BlueGreen'],
    useMaterial3: true,
    
      ), 
      home: TabsScreen(),
      
    );
  }
}


