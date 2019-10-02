import 'package:flutter/material.dart';

void main() {
  Row row = Row(
    children: <Widget>[
      Icon(Icons.call, color: Colors.teal),
      Text("+91 98012 15835")
    ],
  );
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigoAccent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: Text('Business Card'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.share), onPressed: pressShare),
            IconButton(icon: Icon(Icons.refresh), onPressed: pressRefresh)
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.indigoAccent,
                radius: 100,
                backgroundImage: AssetImage("assets/profile.jpg"),
              ),
              Text(
                "Sahil Singh", style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: "Lobster"
              ),
              ),

              Container(
                color: Colors.white,
                height: 2.0,
                width: 80,
                margin: EdgeInsets.fromLTRB(0, 20, 0, 20)
              ),
              Text(
                  "Flutter Developer", style: TextStyle(
                fontFamily: "Lobster",
                color: Colors.white,
                fontSize: 24,
                letterSpacing: 8,
              ),
              ),
              Card(
                margin: EdgeInsets.all(20),
                child : Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: ListTile(
                    leading: Icon(Icons.call, color: Colors.teal),
                    title: Text("+919801215835", style: TextStyle(
                      fontSize: 12
                    ),),
                    trailing: IconButton(
                      icon: Icon(Icons.content_copy),
                      onPressed: copyContent,
                    ),
                ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(20),
                child : Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: ListTile(
                    leading: Icon(Icons.mail, color: Colors.teal),
                    title: Text("sahil.dogstar@gmail.com", style: TextStyle(
                      fontSize: 12
                    ),),
                    trailing: IconButton(
                      icon: Icon(Icons.content_copy),
                      onPressed: copyContent,
                    ),
                ),
                ),
              )
            ],
      ),
        ),
    ),
  ),
  );
}

void copyContent(){
  print("Wow, you pressed this Button!");
}

void pressShare(){
  print("Share was pressed.");
}

void pressRefresh(){
  print("Refresh");
}