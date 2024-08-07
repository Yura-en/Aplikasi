import 'package:flutter/material.dart';
import 'package:flutter_application_1/Halaman_1.dart';

class BagianHalaman1 extends StatefulWidget {
  @override
  State<BagianHalaman1> createState() => _BagianHalaman1State();
}

class _BagianHalaman1State extends State<BagianHalaman1> {
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
        leading: IconButton(
          color: Colors.white,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Halaman1()));
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Nama Kampung',
                      labelStyle: TextStyle(color: Colors.black)),
                ),
                SizedBox(
                    height:
                        20), // // Untuk memberikan jarak antara TextField dan tombol
                ElevatedButton(
                  onPressed: () async {
                    (Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => Halaman1())));
                  },
                  child: Text('Tambahkan'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
