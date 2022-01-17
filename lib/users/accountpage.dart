import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Setting'),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            leading: new Icon(Icons.person),
            title: new Text("My Profile"),
          ),
          new ListTile(
            leading: new Icon(Icons.place),
            title: new Text("My Addresses"),
          ),
          new ListTile(
            leading: new Icon(Icons.wallet_giftcard),
            title: new Text("Bank Account"),
          ),
          new ListTile(
            leading: new Icon(Icons.chat),
            title: new Text("Chat Setting"),
          ),
          new ListTile(
            leading: new Icon(Icons.notifications),
            title: new Text("Notification Setting"),
          ),
          new ListTile(
            leading: new Icon(Icons.privacy_tip),
            title: new Text("Privacy Setting"),
          ),
          new ListTile(
            leading: new Icon(Icons.language),
            title: new Text("Language Setting"),
          ),
          new ListTile(
            leading: new Icon(Icons.help_center),
            title: new Text("Help Centre"),
          ),
          new ListTile(
            leading: new Icon(Icons.shop),
            title: new Text("About"),
          ),
        ],
      ),
    );
  }
}
