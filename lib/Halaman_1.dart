import 'package:flutter/material.dart';
import 'package:flutter_application_1/Bagian_Halaman_1.dart';

class Halaman1 extends StatefulWidget {
  final dynamic NamaKampung;

  Halaman1({this.NamaKampung});
  @override
  _Halaman1State createState() => _Halaman1State();
}

class _Halaman1State extends State<Halaman1> {
  TextEditingController _searchController = TextEditingController();

  void _showSearchDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Cari Data Kampung'),
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
          'Redistribusi Tanah',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 78, 81, 248),
        centerTitle: true,
        leading: IconButton(
          icon: Image.asset("Assets/Logo_BPN.png"),
          onPressed: () {
            print('Image button pressed');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: _showSearchDialog,
            color: Colors.white,
          ),
          PopupMenuButton<String>(
            color: Colors.white,
            onSelected: (String result) {
              print("Selected item: $result");
            },
            iconColor: Colors.white,
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'menu1',
                child: Text('Import File Exel'),
              ),
              PopupMenuItem<String>(
                value: 'menu2',
                child: Text('Upload To Website'),
              ),
            ],
          )
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
                  builder: (context) => BagianHalaman1(),
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
