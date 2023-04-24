import 'package:experiment_04/listview.dart';
import 'package:flutter/material.dart';
import 'listview.dart';
void main() {
  runApp(MaterialApp(
    home: MyList(),
  ));
}

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {




  List<listview> subjects =[
    listview(roll_no:"50",name:"Vaibhav patil"),
    listview(roll_no:"52",name:"Nikhil poojari"),
    listview(roll_no:"57",name:"Tejas sawant"),
  ];

  Widget subjectTemplate(roll_no){
    return Card(

        margin: EdgeInsets.fromLTRB(10.0,10.0,10.0,10.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget> [
              Text(roll_no.roll_no),
              SizedBox(height: 10.0,),
              Text(roll_no.name),
            ],
          ),
        )

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text ("Group -08 Information"),
        centerTitle: true,
      ),
      body: Column(
        children: subjects.map((sub) => subjectTemplate(sub)).toList(),
      ),

    );
  }
}

