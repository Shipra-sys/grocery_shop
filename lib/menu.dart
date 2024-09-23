import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<StatefulWidget> createState() {
    return MenuState();
  }
}

class MenuState extends State<Menu> {
  String selectedMenu = '';
  Widget currentPage = const Center(
    child: Text('Select an option'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 40, 134, 87),
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: const Text('Messages'),
              onTap: () {
                setState(() {
                  selectedMenu = 'Messages';
                  currentPage = messagesLayout();
                });
                Navigator.pop(context); // Close the drawer
              },
              tileColor: selectedMenu == 'Messages'
                  ? const Color.fromARGB(255, 118, 166, 142)
                  : null,
            ),
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Profile'),
              onTap: () {
                setState(() {
                  selectedMenu = 'Profile';
                  currentPage = profileLayout();
                });
                Navigator.pop(context);
              },
              tileColor: selectedMenu == 'Profile'
                  ? const Color.fromARGB(255, 118, 166, 142)
                  : null,
            ),
            ListTile(
              leading: const Icon(Icons.category),
              title: const Text('Categories'),
              onTap: () {
                setState(() {
                  selectedMenu = 'Categories';
                  currentPage = categoriesLayout();
                });
                Navigator.pop(context); // Close the drawer
              },
              tileColor: selectedMenu == 'Categories'
                  ? const Color.fromARGB(255, 118, 166, 142)
                  : null,
            ),
          ],
        ),
      ),
      body: currentPage,
    );
  }

  Widget messagesLayout() {
    return Container(
      color: Colors.teal,
      child: const Center(
        child: Text("Messages", style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget profileLayout() {
    return Container(
      color: Colors.green,
      child: const Center(
        child: Text("Profile", style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget categoriesLayout() {
    return Container(
      color: Colors.orange,
      child: const Center(
        child: Text("Categories", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
