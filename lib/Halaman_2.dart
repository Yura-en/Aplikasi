import 'package:flutter/material.dart';
import 'package:flutter_application_1/Halaman_1.dart';
import 'package:flutter_application_1/Halaman_Formulir_1.dart';

class Halaman2 extends StatefulWidget {
  @override
  _Halaman2State createState() => _Halaman2State();
}

class _Halaman2State extends State<Halaman2> {
  TextEditingController _searchController = TextEditingController();

  void _showSearchDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Cari Data Penduduk'),
          content: TextField(
            controller: _searchController,
            decoration: InputDecoration(hintText: 'Enter search term'),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Batal'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Oke'),
              onPressed: () {
                // Implement search functionality here
                print('Search term: ${_searchController.text}');
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Nama Kampung',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 78, 81, 248),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () async {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Halaman1()));
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: _showSearchDialog,
            color: Colors.white,
          ),
          Image.asset("Assets/Logo_BPN.png")
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HalamanFormulir1(),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.add), Text('data')],
            ),
          ),
        ],
      ),
    );
  }
}
