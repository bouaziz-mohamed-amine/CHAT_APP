import 'package:chat_app/model/messageprovider.dart';
import 'package:flutter/material.dart';

import 'chat_1/homepage.dart';
import 'chat_2/chat2.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PageView(
        children: [
          MyHomePage(),
          Chat2(MessageProvider.getConversation(),'Amine Bouaziz'),
        ],
      ),
    );
  }
}




