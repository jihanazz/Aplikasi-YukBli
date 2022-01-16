import 'package:flutter/material.dart';
import 'package:aplikasi_yukbli/constant.dart';

class LauncherPage extends StatefulWidget {
  @override
  State<LauncherPage> createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('YukBli'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Palette.bg1, Palette.bg2],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Center(
              child: new Image.asset(
                "assets/logo.png",
                height: 90.0,
                width: 270.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
