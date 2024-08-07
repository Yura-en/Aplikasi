import 'package:flutter/material.dart';
import 'package:flutter_application_1/Homepage.dart';

class HalamanRegistCreateAkun extends StatefulWidget {
  @override
  State<HalamanRegistCreateAkun> createState() =>
      _HalamanRegistCreateAkunState();
}

class _HalamanRegistCreateAkunState extends State<HalamanRegistCreateAkun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Buat Akun',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 78, 81, 248),
          centerTitle: true,
          leading: IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Homepage()));
            },
          ),
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
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Pasword',
                    ),
                  ),

                  SizedBox(
                      height:
                          20), // // Untuk memberikan jarak antara TextField dan tombol
                  ElevatedButton(
                    onPressed: () async {
                      (Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => Homepage())));
                    },
                    child: Text('Selesai'),
                  )
                ])));
  }
}
