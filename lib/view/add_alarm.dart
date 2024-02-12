import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddAlarm extends StatelessWidget {
  const AddAlarm({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Add alarm" ,),
        actions: [ IconButton(onPressed: (){}, icon: Icon(Icons.check))],
      ),
      body: Container(
        height:150,
          child: 
     
        CupertinoDatePicker(
          onDateTimeChanged: (value) {
            
          },
          itemExtent: 50.5,
            
      
           backgroundColor: Colors.blue,
            
          
           ),
      ),
    );
  }
}
