import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 32,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          title: const Text(
            'ASU',
            style: TextStyle(
                fontSize: 42.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.notifications,
                color: Colors.black,
                size: 32,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: const Center(
          child: Text('Welcome to Home Page'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: ListTile(
                  title: Text(
                    'Student Name',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Student ID\nStudent Major, Student Year',
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Item 3'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Item 4'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
