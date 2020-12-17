import 'package:flutter/material.dart';
class ClientInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
     child: Column(
       children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             CircleAvatar(
               radius: 40.0,
               backgroundImage: (NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbx3vDe7__zhknbT48V83X6gtUPcUvhxnRsg&usqp=CAU")),
             ),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Row(
                   children: [
                     Icon(Icons.person_outline,color: Colors.red,size: 30,),
                     SizedBox(width: 8.0,),
                     Text("Tanent Name : James Wills")
                   ],
                 ),
                 Row(
                   children: [
                     Icon(Icons.watch_later_outlined,color: Colors.red,size: 30,),
                     SizedBox(width: 8.0,),
                     Text("Duration : 10months")
                   ],
                 ),
                 Row(
                   children: [
                     Icon(Icons.badge,color: Colors.red,size: 30,),
                     SizedBox(width: 8.0,),
                     Text("Rent :\$1000/month")
                   ],
                 ),
                 Row(
                   children: [
                     Icon(Icons.note_outlined,color: Colors.red,size: 30,),
                     SizedBox(width: 8.0,),
                     Text("Rent paid on : Jan 25,2008")
                   ],
                 ),
               ],
             ),
           ],
         ),
       ],
     ),
    );
  }
}
