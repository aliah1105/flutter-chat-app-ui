// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "New Chat App",
      theme: ThemeData(
        drawerTheme: DrawerThemeData(
          scrimColor: Colors.transparent,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Color(0xFF171717),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, right: 5, left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        _globalKey.currentState!.openDrawer();
                      },
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Message",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(width: 35),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Online",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(width: 35),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Group",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(width: 35),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Channel",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(width: 35),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 190,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(top: 15, left: 25, right: 25),
              height: 220,
              decoration: BoxDecoration(
                color: Color(0xFF27c1a9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Favorite Contacts",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 90,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildUserAvatar("Alla", "img1.jpeg"),
                        buildUserAvatar("July", "img2.jpeg"),
                        buildUserAvatar("Mikle", "img3.jpeg"),
                        buildUserAvatar("Kler", "img4.jpg"),
                        buildUserAvatar("Moane", "img5.jpeg"),
                        buildUserAvatar("Jolie", "img6.jpeg"),
                        buildUserAvatar("Alen", "img7.jpeg"),
                        buildUserAvatar("Sara", "img8.jpg"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 365,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: Color(0xFFEFFFFC),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: ListView(
                padding: EdgeInsets.only(left: 25),
                children: [
                  buildConversation("Alla", "How are you?", "img1.jpeg", 0),
                  buildConversation("July", "How are you?", "img2.jpeg", 2),
                  buildConversation("Max", "How are you?", "img3.jpeg", 6),
                  buildConversation("Maria", "How are you?", "img4.jpg", 0),
                  buildConversation("Eli", "How are you?", "img5.jpeg", 3),
                  buildConversation("Adam", "How are you?", "img6.jpeg", 1),
                  buildConversation("Pedro", "How are you?", "img7.jpeg", 2),
                  buildConversation("Selena", "How are you?", "img8.jpg", 0),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: 65,
        height: 65,
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.edit_outlined,
            size: 30,
          ),
          backgroundColor: Color(0xFF27c1a9),
        ),
      ),
      drawer: Drawer(
        width: 275,
        elevation: 30,
        backgroundColor: Colors.black54,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),
        ),
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xF71F1E1F),
              borderRadius: BorderRadius.horizontal(right: Radius.circular(40)),
              boxShadow: [
                BoxShadow(
                    color: Color(0x3D000000), spreadRadius: 30, blurRadius: 20),
              ]),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        SizedBox(width: 56),
                        Text(
                          "Settings",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        AvatarWidget(filename: "img6.jpeg"),
                        SizedBox(width: 12),
                        Text(
                          "Pedro",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 35),
                    RrawerItem(title: "Account", icone: Icons.key),
                    RrawerItem(title: "Chats", icone: Icons.chat_bubble),
                    RrawerItem(
                        title: "Notifications", icone: Icons.notifications),
                    RrawerItem(title: "Data and Storage", icone: Icons.storage),
                    RrawerItem(title: "Help", icone: Icons.help),
                    Divider(
                      color: Colors.green,
                      height: 50,
                    ),
                    RrawerItem(
                        title: "Invite a friend", icone: Icons.people_outline),
                  ],
                ),
                RrawerItem(title: "Log out", icone: Icons.logout),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column buildConversation(
      String name, String message, String filename, int messageCount) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                AvatarWidget(filename: filename),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      message,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 5),
              child: Column(
                children: [
                  Text(
                    "16:35",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(height: 5),
                  if (messageCount > 0)
                    CircleAvatar(
                      radius: 7,
                      backgroundColor: Color(0xFF27c1a9),
                      child: Text(
                        messageCount.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
        Divider(
          indent: 70,
        ),
      ],
    );
  }

  Widget buildUserAvatar(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          AvatarWidget(filename: filename),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class RrawerItem extends StatelessWidget {
  final String title;
  final IconData icone;

  const RrawerItem({
    super.key,
    required this.title,
    required this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Row(
          children: [
            Icon(
              icone,
              color: Colors.white,
            ),
            SizedBox(width: 56),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AvatarWidget extends StatelessWidget {
  final String filename;
  const AvatarWidget({
    super.key,
    required this.filename,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: Image.asset("assets/images/$filename").image,
      ),
    );
  }
}
