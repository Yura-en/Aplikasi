import 'package:flutter/material.dart';
import 'package:flutter_application_1/Halaman_2.dart';
import 'package:flutter_application_1/Halaman_Formulir_4.dart';

class HalamanFormulir5 extends StatefulWidget {
  @override
  State<HalamanFormulir5> createState() => _HalamanFormulir5State();
}

class _HalamanFormulir5State extends State<HalamanFormulir5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Penguasaan dan Pemilikan Tanah Lainnya',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 78, 81, 248),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HalamanFormulir4()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(children: [
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Tanah Yang Telah Dimiliki',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Terletak di',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Luas Tanah Yang di Garap',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
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
                            builder: (context) => Halaman2())));
                  },
                  child: Text('Tambahkan'),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
