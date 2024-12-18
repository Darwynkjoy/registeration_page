import 'package:flutter/material.dart';
import 'package:registration/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Registerpage extends  StatefulWidget{
  @override
  State<Registerpage> createState()=> _registerpageState();
}
class _registerpageState extends State<Registerpage>{
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String _registrationMessage = '';

  Future<void> _register() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String username = usernameController.text;
    String password = passwordController.text;
    
    if (username.isNotEmpty && password.isNotEmpty) {
      await prefs.setString('username', username);
      await prefs.setString('password', password);
      setState(() {
        _registrationMessage = 'Registration Successful!';
      });
    } else {
      setState(() {
        _registrationMessage = 'Please fill in both fields!';
      });
    }
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
              labelText: "Password",
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