import 'package:dsctask6/pages/signup.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Contacts",
      home: SignUp(),
      // initialRoute: "myContacts",
      // routes: {
      //   "myContacts": (BuildContext context) => Contacts(),
      //   "myGallery": (BuildContext context) => Gallery(),
      //   "searchPage": (BuildContext context) => SearchPage(),
      // },
      // home: Gallery(),
    );
  }
}
