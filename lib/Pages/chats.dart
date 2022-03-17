import 'package:flutter/material.dart';
import 'package:flutter_apps/models/chat_model.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) => Column(
                children: [
                   Divider(
                    height: 10,
                    indent: 80,
                    thickness: 1,
                  ),
                   ListTile(
                      leading:  CircleAvatar(
                        radius: 25,
                        foregroundColor: Color(0xff075e54),
                        backgroundColor: Colors.grey,
                        backgroundImage:
                           NetworkImage(data[index].url.toString()),
                      ),
                      title:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Text(
                            data[index].name.toString(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                           Text(
                            data[index].time.toString(),
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          )
                        ],
                      ),
                      subtitle:  Container(
                        padding: EdgeInsets.only(top: 3),
                        child: Text(
                          data[index].message.toString(),
                        ),
                      )
    
                  )
                ],
              )
              ),
              floatingActionButton:  FloatingActionButton(
        backgroundColor: Color(0xff075e54),
        child: new Icon(
            Icons.message,
          color: Colors.white,
        ),
        onPressed: ()=> print('chats'),
      ),
    );

            
  }
}
