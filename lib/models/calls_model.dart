import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallModel {
  final String name;
  final String time;
  final String profileUrl;
  final Widget Icon;
  CallModel({required this.name, required this.profileUrl, required this.time,required this.Icon});
}

List<CallModel> dummyData = [
   CallModel(
      name: 'Veronica',
      profileUrl:
          'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1964&q=80',
      time: '14 December, 7:00 pm',
      Icon:Icon( Icons.call_received_sharp) ),
   CallModel(
      name: 'Rusty',
      profileUrl:
          'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      time: '1 August, 6:00 am',
      Icon:Icon( Icons.call_received_sharp) ),
   CallModel(
      name: 'Maeve',
      profileUrl:
          'https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=461&q=80',
      time: '2 May, 1:00 pm',
      Icon:Icon( Icons.call_received_sharp) ),
   CallModel(
      name: 'Rahul',
      profileUrl:
          'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
      time: '19 March, 12:00 pm',
      Icon:Icon( Icons.call_received_sharp) ),
];
