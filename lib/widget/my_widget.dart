import 'package:flutter/material.dart';
import 'package:json_app/widget/my_list.dart';

class MyWidget extends StatefulWidget {
  //const MyWidget({Key? key}) : super(key: key);

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("JASON Parse"),),
        body: MyList(),
      ),

    );
  }
}
