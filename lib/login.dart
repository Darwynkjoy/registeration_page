import 'package:flutter/material.dart';
import 'package:registration/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Loginpage extends  StatefulWidget{
  @override
  State<Loginpage> createState()=> _registerpageState();
}
class _registerpageState extends State<Loginpage>{

  loadname(String name,String password)async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    setState(() {
      name=prefs.getString("name");
      password=prefs.getString("password");
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Login",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "User name",
            ),),

            SizedBox(height: 40,),

            TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "User name",
            ),),

            SizedBox(height: 60,),

            SizedBox(
              height: 40,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.black
                ),
                onPressed: (){
                  Navigator.push((context), MaterialPageRoute(builder: (context)=>Homepage()));
                }, child: Text("Login",style: TextStyle(color: const Color.fromARGB(255, 0, 140, 255)),))),
          ],
        ),
      ),
    );
  }
}