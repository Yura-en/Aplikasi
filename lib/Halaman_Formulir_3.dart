import 'package:flutter/material.dart';
import 'package:flutter_application_1/Halaman_Formulir_2.dart';
import 'package:flutter_application_1/Halaman_Formulir_4.dart';

class HalamanFormulir3 extends StatefulWidget {
  @override
  State<HalamanFormulir3> createState() => _HalamanFormulir3State();
}

class _HalamanFormulir3State extends State<HalamanFormulir3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pengarap(Subyek)',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 78, 81, 248),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HalamanFormulir2()));
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
                    labelText: 'Nama',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Tempat/Tanggal/Lahir',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Nik',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'No.Kartu Keluarga',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 7),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Jumlah Keluarga Yang masih Menjadi Tanggungan',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Alamat',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Alamat Domisili',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Pekerjaan',
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Penghasilan Per Bulan',
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
                            builder: (context) => HalamanFormulir4())));
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
