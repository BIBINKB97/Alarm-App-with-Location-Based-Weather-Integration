import 'package:alarm_application/view/add_alarm.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle:  true,
        title: Text("Alarms",
      ),),
      body: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(10),
        height: double.infinity,
        width: double.infinity,  
        child: ListView.separated(     
          itemBuilder: (context, index) {
             return Container(
              height: 90,
              decoration: BoxDecoration(
                color: Colors.black38,  borderRadius:BorderRadius.circular(15) ),
              child: Center(
                child: ListTile(
                  leading: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("7:10 AM", style: TextStyle(fontSize: 30),),
                      Text("Alarm in 7 hours and 8 minutes", style: TextStyle(fontSize: 10),),
                    ],    
                  ),
                   trailing: Icon(Icons.toggle_off ,size: 50,),
                   ),
              ),
            );
          },
         itemCount: 10,
         separatorBuilder: (context, index) {
           return SizedBox(height: 10,);
         },  
        ),
      ),
      floatingActionButton: Align(
         alignment: Alignment(0.9, 0.9),
        child: FloatingActionButton(onPressed: (){
          Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => AddAlarm()),
);
        },
        backgroundColor: const Color.fromARGB(255, 93, 0, 254),
        child: Icon(Icons.add ,color: Colors.white,),
        ),
      ),
    );
  }
}