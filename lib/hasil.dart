import 'dart:ui';
import 'package:flutter/material.dart';

class Proses extends StatelessWidget {
  Proses({
    @required this.jumlahbarang,
    @required this.hargabarang,
    @required this.jumlahuang,
    this.nbarang,
  });
  final int jumlahbarang;
  final int hargabarang;
  final String nbarang;
  final int jumlahuang;

  @override
  Widget build(BuildContext context) {
    int jumlah = jumlahbarang * hargabarang;
    String total = "$jumlah";
    int sisa = jumlah - jumlahuang;
    String kembalian = "$sisa";
    String money = "$jumlahuang";
    String hbarang = "$hargabarang";
    String jbarang = "$jumlahbarang";

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text('Aplikasi Kasir GMart'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Card(
                child: Row(
                  children: <Widget>[
                    Text(
                      '  Nama Barang      :  ' + nbarang,
                      style: TextStyle(fontFamily: "serif", fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Card(
                child: Row(
                  children: <Widget>[
                    Text(
                      '  Jumlah Barang   :  ' + jbarang,
                      style: TextStyle(fontFamily: "serif", fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Card(
                child: Row(
                  children: <Widget>[
                    Text(
                      ' Harga Barang      : Rp. ' + hbarang,
                      style: TextStyle(fontFamily: "serif", fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Card(
                child: Row(
                  children: <Widget>[
                    Text(
                      ' Total Belanja       : Rp. ' + total,
                      style: TextStyle(fontFamily: "serif", fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Card(
                child: Row(
                  children: <Widget>[
                    Text(
                      ' Uang Cash            :  Rp. ' + money,
                      style: TextStyle(fontFamily: "serif", fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Card(
                child: Row(
                  children: <Widget>[
                    Text(
                      ' Kembalian           : Rp. ' + kembalian,
                      style: TextStyle(fontFamily: "serif", fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
