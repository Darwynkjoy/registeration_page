import 'package:flutter/material.dart';
import 'package:registration/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Registerpage extends  StatefulWidget{
  @override
  State<Registerpage> createState()=> _registerpageState();
}
class _registerpageState extends State<Registerpage>{
  String name="";
  String password="";

  Savedname(String name,String password)async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    setState(() {
      prefs.setString("name", name);
      prefs.setString("password", password);
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Register",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
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
                  Navigator.push((context), MaterialPageRoute(builder: (context)=>Loginpage()));
                }, child: Text("Register",style: TextStyle(color: const Color.fromARGB(255, 0, 140, 255)),))),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already Registered?",style: TextStyle(fontSize: 15,color: Colors.black),),
                TextButton(onPressed: (){
                  Navigator.push((context), MaterialPageRoute(builder: (context)=>Loginpage()));
                }, child: Text("Login",style: TextStyle(color: const Color.fromARGB(255, 0, 140, 255)),))
              ],
            )
          ],
        ),
      ),
    );
  }
}