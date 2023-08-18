import 'package:flutter/material.dart';
import 'package:orinova_education_app/Screens/tabs.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
void main() {
  //SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
   const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
     theme: ThemeData(
 
    textTheme:
        Theme.of(context).textTheme.apply(
      bodyColor: const Color(0xFF303841), //<-- SEE HERE
      displayColor:const Color(0xFF303841) , //<-- SEE HERE

  ),
        //primaryColor:ColorClass.customColors['BlueGreen'],
    useMaterial3: true,
    
      ), 
      home: const TabsScreen(),
      
    );
  }
}


