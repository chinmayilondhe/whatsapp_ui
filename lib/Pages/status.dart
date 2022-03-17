import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_apps/Pages/storyview.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  _StatusState createState() => _StatusState();
}

class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color(0xfff2f2f2),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Card(
                    color: Colors.white,
                    elevation: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Expanded(
                        child: ListTile(
                          leading: Stack(children: <Widget>[
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  "https://s3.amazonaws.com/wll-community-production/images/no-avatar.png"),
                            ),
                            Positioned(
                              bottom: 0.0,
                              right: 1.0,
                              child: Container(
                                height: 20,
                                width: 20,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle
                                ),
                              ),
                            ),
                          ],
                          ),
                          title: Text('My Status',
                            style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Text('Add to my status'),
                        ),
                      ),
                      ),
                    ),
                  Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: Text(
                      "Recent Updates",
                      style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child:
                     Container(
                      padding:EdgeInsets.all(8) ,
                      color: Colors.white,
                     child: ListView(
                       children: [
                         ListTile(
                           leading:  CircleAvatar(
                             radius: 30,
                             backgroundImage: new NetworkImage("https://pbs.twimg.com/media/EClDvMXU4AAw_lt?format=jpg&name=medium"),
                           ),
                           title:Text('Rahul'),
                           subtitle: Text('Today, 00.52'),
                           onTap: () => Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => StoryPageView())),
                         ),
                          ListTile(
                           leading:  CircleAvatar(
                             radius: 30,
                             backgroundImage: new NetworkImage("https://pbs.twimg.com/media/EClDvMXU4AAw_lt?format=jpg&name=medium"),
                           ),
                           title:Text('Rahul'),
                           subtitle: Text('Today, 00.52'),
                           onTap: () => Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => StoryPageView())),
                         ), ListTile(
                           leading:  CircleAvatar(
                             radius: 30,
                             backgroundImage: new NetworkImage("https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=461&q=80"),
                           ),
                           title:Text('Maeve'),
                           subtitle: Text('Today, 00.52'),
                           onTap: () => Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => StoryPageView())),
                         ),
                          ListTile(
                           leading:  CircleAvatar(
                             radius: 30,
                             backgroundImage: new NetworkImage( "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                           ),
                           title:Text('Rusty'),
                           subtitle: Text('Today, 00.52'),
                           onTap: () => Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => StoryPageView())),
                         ),
                          ListTile(
                           leading:  CircleAvatar(
                             radius: 30,
                             backgroundImage: new NetworkImage("https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1964&q=80"),
                           ),
                           title:Text('Veronica'),
                           subtitle: Text('Today, 00.52'),
                           onTap: () => Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => StoryPageView())),
                         ),
                          
                          ListTile(
                           leading:  CircleAvatar(
                             radius: 30,
                             backgroundImage: new NetworkImage("https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"),
                           ),
                           title:Text('Rahul'),
                           subtitle: Text('Today, 00.52'),
                           onTap: () => Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => StoryPageView())),
                         )
                       ],
                     ),
                    ),
                  ),
                  Padding(
                    padding:const EdgeInsets.all(8),
                    child: Text('Viewed Updates',
                    style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                  ),
                  
                     Container(
                      padding:EdgeInsets.all(8) ,
                      color: Colors.white,
                     child: ListView(
                       physics: ClampingScrollPhysics(),
                       shrinkWrap: true,
                       children: [
                         ListTile(
                           leading:  CircleAvatar(
                             radius: 30,
                             backgroundImage: new NetworkImage("https://pbs.twimg.com/media/EClDvMXU4AAw_lt?format=jpg&name=medium"),
                           ),
                           title:Text('Rahul'),
                           subtitle: Text('Today, 00.52'),
                           onTap: () => Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => StoryPageView())),
                         )
                       ],
                     ),
                    ),
                  
    
              ])
              ),
              floatingActionButton:  FloatingActionButton(
        backgroundColor: Color(0xff075e54),
        child: new Icon(
            Icons.edit,
          color: Colors.white,
        ),
        onPressed: ()=> print('chats'),
      ),
    );
  }
}
