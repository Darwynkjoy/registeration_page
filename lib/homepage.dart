import 'package:flutter/material.dart';
import 'package:registration/registerpage.dart';

class Homepage extends  StatefulWidget{
  @override
  State<Homepage> createState()=> _registerpageState();
}
class _registerpageState extends State<Homepage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Homepage",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [GestureDetector(
          onTap: () {
            Navigator.push((context), MaterialPageRoute(builder: (context)=>Registerpage()));
          },
          child: Icon(Icons.logout,color: const Color.fromARGB(255, 0, 140, 255),))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Home Screen",style: TextStyle(fontSize: 25,color: const Color.fromARGB(255, 0, 215, 253)),)),
          ],
        ),
      ),
    );
  }
}