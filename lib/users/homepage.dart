import 'dart:html';

import 'package:aplikasi_yukbli/constant.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onTap: () {},
          readOnly: true,
          style: TextStyle(fontSize: 15),
          decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search, color: Palette.bg1),
              contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: new BorderSide(color: Colors.white)),
              fillColor: Color(0xfff3f3f4),
              filled: true),
        ),
        backgroundColor: Palette.bg1,
      ),
      body: new ListView(
        children: <Widget>[
          new ListProduct(
              pict:
                  "https://hm-media-prod.s3.amazonaws.com/pub/media/catalog/product/medium/1c88d9028f471b4baa11902efa19c002d0fc9ded_xxl-1.jpg",
              tit: "H&M Hoodie Pink",
              price: "Price: Rp499.900,00"),
          new ListProduct(
              pict:
                  "https://id-live-05.slatic.net/shop/9bbc14eb9091dfb694141a434ff02a6a.jpeg_2200x2200q80.jpg_.webp",
              tit: "Miniso Totebag Marvel Black",
              price: "Price: Rp99.900,00"),
          new ListProduct(
              pict:
                  "https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/6d121509a29b498fa573aa42013cf0f5_9366/Reebok_Royal_Complete_3.0_Low_Shoes_White_DV8649_01_standard.jpg",
              tit: "Reebok Royal Complete 3.0 Low Shoes",
              price: "Price: Rp1.030.896,00"),
          new ListProduct(
              pict:
                  "https://images.samsung.com/id/smartphones/galaxy-z-flip3-5g/buy/zflip3_carousel_marketingsinglekv_pc.jpg?imwidth=768",
              tit: "Galaxy Z Flip3 5G 128GB|8GB",
              price: "Price: Rp14.999.000,00"),
          new ListProduct(
              pict:
                  "https://cf.shopee.co.id/file/c4afd059d76493a1f68952186365bee2",
              tit: "NBR SPEEDS YOGA MAT Tebal 10mm",
              price: "Price: Rp250.000,00"),
          new ListProduct(
              pict:
                  "https://1.bp.blogspot.com/-AZJ6B7DohwQ/YEDlKhqMHrI/AAAAAAAAC7c/ZSwrjHds5UEfw1GW68fBf0M4Gb8iKsHrwCLcBGAsYHQ/s669/IMG_20210304_194656.jpg",
              tit: "Somethinc Level 1% Retinol 20 ml",
              price: "Price: Rp170.500,00"),
        ],
      ),
    );
  }
}

class ListProduct extends StatelessWidget {
  ListProduct({required this.pict, required this.tit, required this.price});

  final String pict;
  final String tit;
  final String price;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Center(
        child: new Row(
          children: <Widget>[
            new Image(
              image: new NetworkImage(pict),
              width: 80.0,
            ),
            new Container(
              child: new Center(
                child: new Column(
                  children: <Widget>[
                    new Text(
                      tit,
                      style: new TextStyle(fontSize: 20.0),
                    ),
                    new Text(
                      price,
                      style: new TextStyle(fontSize: 15.0, color: Colors.grey),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
