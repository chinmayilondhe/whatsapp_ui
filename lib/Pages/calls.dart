import 'package:flutter/material.dart';
import 'package:flutter_apps/models/calls_model.dart';

class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  _CallsState createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount:dummyData.length ,
        itemBuilder: (context,index)=>Column(children: [
           Divider(
             height: 10,
             indent: 80,
             thickness: 1,
           ),
            ListTile(
                  leading:  CircleAvatar(
                    backgroundImage: NetworkImage(dummyData[index].profileUrl.toString()),
                    radius: 25,
                     foregroundColor: Color(0xff075e54),
                        backgroundColor: Colors.grey,
                  ),
                  title: Text(
                    dummyData[index].name.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: [
                      
                      Icon(
                        Icons.call_received_sharp
                      ),
                      Text(
                        dummyData[index].time.toString()),
                    ],
                  ),
                  
                  trailing:Icon(
                    Icons.call,
                    color: Colors.green,
                  )
                  ),
                  
        ],),
        
      ),
      floatingActionButton:  FloatingActionButton(
        backgroundColor: Color(0xff075e54),
        child: new Icon(
            Icons.add_call,
          color: Colors.white,
        ),
        onPressed: ()=> print('chats'),
      ),
      
    );
  }
}
