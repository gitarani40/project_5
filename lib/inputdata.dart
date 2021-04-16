import 'package:flutter/material.dart';
import 'hasil.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String nbarang = '';
  int jbarang = 0;
  int harga = 0;
  int uangpembeli = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text('Aplikasi Kasir GMart'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.clear_all),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                child: Image.asset(
              'images/kasir1.jpg',
              fit: BoxFit.fitWidth,
            )),
            Container(
                margin: EdgeInsets.only(top: 0),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Masukan Nama Barang:',
                      style: TextStyle(
                          fontFamily: 'serif',
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            nbarang = txt;
                          });
                        },
                      ),
                    ),
                  ],
                )),
            Container(
                margin: EdgeInsets.only(top: 0),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Masukan Jumlah Barang:',
                      style: TextStyle(
                          fontFamily: 'serif',
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            jbarang = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
                margin: EdgeInsets.only(top: 0),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Masukan Harga Barang:',
                      style: TextStyle(
                          fontFamily: 'serif',
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            harga = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
                margin: EdgeInsets.only(top: 0),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Masukan Jumlah Cash:',
                      style: TextStyle(
                          fontFamily: 'serif',
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            uangpembeli = int.parse(txt);
                          });
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                )),
            Container(
              //height: double.infinity,
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Proses(
                              nbarang: nbarang,
                              jumlahbarang: jbarang,
                              hargabarang: harga,
                              jumlahuang: uangpembeli,
                            )),
                  );
                },
                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.purple,
                // textColor: Colors.white,
                child: Text(
                  'HITUNG',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
