import 'package:flutter/material.dart';
import 'package:gallery_app/UI/Dashboard.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login",
          style: TextStyle(color: Colors.white,
          fontWeight: FontWeight.w800,
          fontStyle: FontStyle.italic
          ),
        ),
          backgroundColor: Colors.blue[700],
          centerTitle: true),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue, Colors.purple])
        ),
        child: Center(
          child: Card(
            elevation: 2,
            margin: EdgeInsets.all(15),
            color: Color.fromRGBO(239, 226, 226, 1),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                color: Colors.blue,
                width: 3
              )
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Welcome to Gallery ",
                  style:TextStyle(
                   fontStyle: FontStyle.italic,
                   fontWeight: FontWeight.w900,
                    color: Colors.blue,
                    fontSize: 25
                  ),),
                  SizedBox(height: 15),
                  TextField(
                    controller: emailController,
                    cursorColor: Colors.deepPurple,
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(),
                      hint: Text("Enter your email address"),
                    ),
                  ),
                  SizedBox(height:12),
                  TextField(
                    controller: passwordController,
                    cursorColor: Colors.deepPurple,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                      hint: Text("Enter your password"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (emailController.text == "mayank@gmail.com" &&
                            passwordController.text == '7658') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Dashboard()),
                          );
                          _clearfields();
                        } else if (emailController.text.isEmpty ||
                            passwordController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Please enter all fields")),
                          );
                          _clearfields();
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Invalid Credentials")),
                          );
                          _clearfields();
                        }
                      },
                      style:  ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        minimumSize: Size(250, 50)
                      ),
                      child: Text("Login"),
                    ),
                  ),
                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
  //field clear function
  void _clearfields(){
    emailController.clear();
    passwordController.clear();
  }
}


