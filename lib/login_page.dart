import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:simple/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final phoneText = TextEditingController();
  final passwordText = TextEditingController();

  //MARK:API Call
  apiCallLogin(Map<String,dynamic> param) async{

    var url = Uri.parse('http://khelaahobe.com/api/flutter/login');
    var response = await http.post(url,body: param);

    if(response.statusCode==200){
      Navigator.pushNamed(context, 'home');
    }


  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: phoneText,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Phone',
                  hintText: 'Enter Phone',
                ),
              ),
              TextField(
                obscureText: true,
                controller: passwordText,
                decoration: InputDecoration(
                  labelText: 'password',
                  hintText: 'Enter Your Password',
                ),
              ),
              TextButton(
                onPressed: () {
                  apiCallLogin({
                    "phone": phoneText.text,
                    "password": passwordText.text,
                  });
                },
                child: Text(
                  'Submit',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}