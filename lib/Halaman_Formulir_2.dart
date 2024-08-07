import 'package:flutter/material.dart';
import 'package:flutter_application_1/Halaman_Formulir_1.dart';
import 'package:flutter_application_1/Halaman_Formulir_3.dart';

class HalamanFormulir2 extends StatefulWidget {
  const HalamanFormulir2({super.key});

  @override
  State<HalamanFormulir2> createState() => _HalamanFormulir2State();
}

class _HalamanFormulir2State extends State<HalamanFormulir2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tanah Garapan',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 78, 81, 248),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HalamanFormulir1()));
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
                    labelText: 'Status Tanah',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Dasar Garapan Tanah',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Sumber Tanah',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Luas',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 7),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Penggunaan Tanah',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Pemanfaatan Tanah',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Nilai Tanah saat ini',
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
                            builder: (context) => HalamanFormulir3())));
                  },
                  child: Text('Selanjutnya'),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
