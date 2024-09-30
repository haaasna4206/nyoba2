import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) :super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String username = '';

  String password = '';

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login page"),
        ),
        body: Column (children: [
          _usernameField(),
          _passwordField(),
          _loginButton(context),
        ],),
      ) 
    );
  }

  Widget _usernameField() {
    return Container (
      padding: EdgeInsets.symmetric (horizontal: 20, vertical: 10),
      child: TextFormField (
        onChanged: (value) {
          username = value;
        },
        enabled: true,
        decoration: const InputDecoration(
          hintText: 'Username',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Color.fromARGB(255, 255, 90, 13)),
          ),
        ),
      ),
    );
  }

   Widget _passwordField() {
    return Container (
      padding: EdgeInsets.symmetric (horizontal: 20, vertical: 10),
      child: TextFormField (
        onChanged: (value) {
          password = value;
        },
        enabled: true,
        decoration: const InputDecoration(
          hintText: 'Password',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(color: Color.fromARGB(255, 255, 90, 13)),
          ),
        ),
      ),
    );  
  }

  Widget _loginButton(BuildContext context) {
    return Container (
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton (onPressed: () {
        String text = " ";
        if (username == 'admin' && password == '5nya4') {
        setState(() {
           text = "Login Berhasil";
           isLoginSuccsess = true;
        });
        } else {
          setState(() {
              text = "Logil Gagal";
              isLoginSuccsess = false;
          });
        }

        SnackBar snackBar = SnackBar (
          content: Text(text),
        );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      },
      child: const Text ('Login'),
      ),
    );
  }
}