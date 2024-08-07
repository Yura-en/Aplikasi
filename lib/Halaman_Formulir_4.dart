import 'package:flutter/material.dart';
import 'package:flutter_application_1/Halaman_Formulir_3.dart';
import 'package:flutter_application_1/Halaman_Formulir_5.dart';

class HalamanFormulir4 extends StatefulWidget {
  @override
  State<HalamanFormulir4> createState() => _HalamanFormulir4State();
}

class _HalamanFormulir4State extends State<HalamanFormulir4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pengusahaan Tanah Garapan',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 78, 81, 248),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HalamanFormulir3()));
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
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Cara Pengusahaan',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  items: <String>['Sendiri', 'Pihak Lain'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    // Handle the change here
                  },
                ),
                SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Tanaman Yang Dominan',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Peruntukan Dan Penggunaan Tanah Saat Ini',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Tahun Pengarapan',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Dasar Penguasaan Tanah',
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
                            builder: (context) => HalamanFormulir5())));
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
