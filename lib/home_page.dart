import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
        // centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 233, 107, 255),
        foregroundColor: Colors.white,
        // leading: Icon(Icons.home),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Name"),
              accountEmail: Text("Email"),
            ),
            ListTile(
              title: Text("Homepage"),
              leading: Icon(Icons.home),
              hoverColor: Colors.pink[100],
              onTap: () {},
            ),
            // Divider(),
            Spacer(),
            ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
              hoverColor: Colors.pink[100],
              onTap: () {},
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.purpleAccent,
                foregroundColor: Colors.white,
                fixedSize: Size(100, 50),
                side: BorderSide(),
                elevation: 10,
              ),
              child: Text("TextButton"),
            ),
            SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 215, 129, 230),
                foregroundColor: Colors.white,
                fixedSize: Size(150, 20),
                side: BorderSide(),
              ),
              child: Text("ElevatedButton"),
            ),

            OutlinedButton(onPressed: () {}, child: Text("OutlinedButton")),
            IconButton(
              onPressed: () {},
              style: IconButton.styleFrom(),
              icon: Icon(Icons.login),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        backgroundColor: Colors.purpleAccent,
        foregroundColor: Colors.white,
        shape: BeveledRectangleBorder(),
        child: Icon(Icons.add),
      ),
    );
  }
}
