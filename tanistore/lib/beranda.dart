import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text('Tani Store'),
        ]),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_active),
            onPressed: () {
              print('click start');
            },
          ),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                accountName: new Text("Komang Yudi Utama"),
                accountEmail: new Text("yudi.utama@undiksha.ac.id"),
                currentAccountPicture: new GestureDetector(
                  onTap: () {},
                  child: Image(
                    image: AssetImage("appimages/admin.jpg"),
                    ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('appimages/bg.jpg'),
                      fit: BoxFit.cover),
                )),
            new ListTile(
              title: new Text('About'),
            ),
            Divider(
              height: 2,
            ),
          ],
        ),
      ),
      body: new ListView(children: <Widget>[
        Image.asset("appimages/tani1.jpg"),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Theme.of(context).dividerColor)),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: new BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [Colors.blue[800], Colors.blue[700]],
            ),
            //borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Apa yang kamu cari semua ada, Ayo Belanja...',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
