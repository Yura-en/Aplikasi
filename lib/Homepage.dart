import 'package:flutter/material.dart';
import 'package:flutter_application_1/Halaman_1.dart';
import 'package:flutter_application_1/Halaman_Regist_Create_Akun.dart';
import 'package:flutter_application_1/Halaman_Regist_New_Password.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Redistribusi Tanah',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 78, 81, 248),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "Assets/Logo_BPN.png",
                width: 80,
              ),
              Title(
                  color: Colors.white,
                  child: Text(
                    'Agraria dan Tata Ruang Badan Pertanahan Nasional',
                  )),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () async {
                    (Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => HalamanRegistNewPasword())));
                  },
                  child: Text('Forgot Password'),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () async {
                  (Navigator.push(context,
                      new MaterialPageRoute(builder: (context) => Halaman1())));
                },
                child: Text('Masuk'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 36),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () async {
                  (Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => HalamanRegistCreateAkun())));
                },
                child: Text('New User? Create Account'),
              ),
            ]),
      ),
    );
  }
}
