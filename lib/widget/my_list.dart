import 'package:flutter/material.dart';
import 'package:json_app/model/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {

  List<User> users =[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  void loadData() async{
   String url = "https://jsonplaceholder.typicode.com/todos";

  http.Response  response = await http.get(Uri.parse(url));

  var userData = response.body;
  var decodeData = jsonDecode(userData);

      print(userData);
   print(decodeData);

    users = List.from(decodeData).map<User>((item) => User.fromJson(item)).toList();
    setState(() {

    });

  }


  @override
  Widget build(BuildContext context) {
    return (users != null && users.isNotEmpty)?ListView.builder(itemCount :users.length ,itemBuilder: (context,index){
        return Card(
          child: ListTile(
            onTap: (){

            },
            leading:Text("${users[index].userId}") ,
            title: Text("${users[index].name}"),
          ),
        );
    },): Center(
      child: CircularProgressIndicator(),
    );
  }


}
