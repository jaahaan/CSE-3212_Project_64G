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

      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.purpleAccent,
                    foregroundColor: Colors.white,
                    fixedSize: Size(100, 30),
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

            Container(
              height: 200,
              width: 200,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(
                // color: const Color.fromARGB(255, 225, 174, 235),
                border: Border.all(width: 5, color: Colors.lightBlue),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                // shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    Colors.purple,
                    const Color.fromARGB(255, 232, 167, 243),
                  ],
                ),
              ),
              child: Text("Hello Container"),
            ),

            SizedBox(
              height: 200,
              width: 200,
              child: Card(
                color: Colors.purple,
                shadowColor: Colors.purple,
                elevation: 10,
                shape: BeveledRectangleBorder(),
                child: Center(child: Text("Hello Card")),
              ),
            ),

            Image.asset('assets/images/flutter.png', height: 300, width: 300),
            Image.network('/assets/images/flutter.png'),
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
