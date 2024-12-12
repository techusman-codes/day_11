import 'package:day_11/pages/first_page.dart';
import 'package:day_11/pages/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Center(child: const Text("D R A W E R")),
        backgroundColor: Colors.deepPurple[300],
      ),
      drawer: Drawer(
        child: Container(
            color: Colors.deepPurple[200],
            child: ListView(
              children: [
                const Center(
                  child: DrawerHeader(
                    child: Text(
                      "DRAWER WIDGET",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: const Text(
                    "Page 1",
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const FirstPage()));
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text(
                    "Page 2",
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SecondPage()));
                  },
                )
              ],
            )),
      ),
    );
  }
}
