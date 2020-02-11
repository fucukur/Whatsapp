import 'package:flutter/material.dart';

import 'ChatScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
//          backgroundColor: Color.fromARGB(200, 7, 94, 84),
          backgroundColor: Color.fromRGBO(7, 94, 84, 2),
          title: Text("WhatsApp"),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(Icons.search),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(Icons.more_vert),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            controller: controller,
            tabs: <Widget>[
              GestureDetector(
                child: Tab(child: Icon(Icons.camera_alt)),
              ),
              GestureDetector(
                child: Tab(
                  child: Text("SOHBET"),
                ),
              ),
              GestureDetector(
                child: Tab(
                  child: Text("DURUM"),
                ),
              ),
              GestureDetector(
                child: Tab(
                  child: Text("ARAMA"),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: controller,
          children: <Widget>[
            Container(
              child: Text("Kamera"),
            ),
            Container(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int i) {
                  return Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap:() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ChatScreen()),
                          );
                        },
                        child: Card(
                          color: Colors.white,
                          elevation: 0.0,
                          child: ListTile(
                            title: Text(
                              "Furkan",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.done_all,
                                  size: 18,
                                  color: Colors.lightBlueAccent,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("Örnek Mesaj"),
                              ],
                            ),
                            leading: CircleAvatar(
                              backgroundColor: Color.fromRGBO(7, 94, 84, 2),
//                        foregroundColor: Colors.pink,
                              child: Icon(Icons.android),
                            ),
                            trailing: Padding(
                              padding: EdgeInsets.only(
                                  left: 0, top: 1, bottom: 17, right: 10),
                              child: Text(
                                "${DateTime.now().hour}" +
                                    ":" +
                                    "${DateTime.now().minute}",
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 5,
                            top: 0,
                            bottom: 0,
                            right: 10),
                        child: Divider(color: Colors.grey),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color.fromRGBO(7, 94, 84, 2),
                      child: Icon(Icons.android),
                    ),
                    title: Text(
                      "My Status",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Tap to add status update"),
                  ),
                  Container(
                    height: 25,
                    color: Colors.black12,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                        ),
                        Text("Recent Updates", textAlign: TextAlign.left),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(0),
//                    height: MediaQuery.of(context).size.height,
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, i) {
                          return Card(
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Color.fromRGBO(7, 94, 84, 2),
                                child: Icon(Icons.android),
                              ),
                              contentPadding: EdgeInsets.all(7.0),
                              title: Text("Hey",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              subtitle: Padding(
                                padding: EdgeInsets.only(
                                    left: 0, top: 15, bottom: 0, right: 10),
                                child: Text("Today ${DateTime.now().hour}" +
                                    ":" +
                                    "${DateTime.now().minute}" +
                                    "pm"),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int i) {
                  return ListTile(
                    contentPadding: EdgeInsets.all(7.0),
                    leading: CircleAvatar(
                      child: Icon(Icons.android),
                      backgroundColor: Color.fromRGBO(7, 94, 84, 2),
                    ),
                    title: Text("Sample",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text("Yesterday, ${DateTime.now().hour}" +
                        ":" +
                        "${DateTime.now().minute}" +
                        "pm"),
                    trailing: Icon(
                      Icons.call,
                      color: Color.fromRGBO(7, 94, 84, 2),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.camera_alt),
          backgroundColor: Color.fromRGBO(7, 94, 84, 2),
        ),
      ),
    );
  }
}
