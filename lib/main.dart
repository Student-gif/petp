// ignore_for_file: void_checks, avoid_print

import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => coolFunc(1, 5),
        backgroundColor: const Color.fromARGB(0, 0, 0, 253),
        foregroundColor: const Color.fromARGB(0, 202, 80, 123),
      ),
      appBar: AppBar(
          centerTitle: true,
          title: const Text('gamb'),
          backgroundColor: Colors.green[600]),
      body: const App(),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.bluetooth),
            label: 'label0',
            backgroundColor: Color.fromARGB(255, 196, 196, 84)),
        BottomNavigationBarItem(icon: Icon(Icons.bluetooth), label: 'label1'),
        BottomNavigationBarItem(icon: Icon(Icons.bluetooth), label: 'label2'),
        BottomNavigationBarItem(icon: Icon(Icons.bluetooth), label: 'label3'),
      ]),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Colors.black12),
                accountName: const Text('twister'),
                accountEmail: const Text('email@email.email'),
                currentAccountPicture: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            ListTile(title: const Text('О себе'), onTap: () {}),
            ListTile(
                title: const Text('О чужих'),
                leading: const Icon(Icons.account_circle),
                onTap: () {}),
          ],
        ),
      ),
    ),
  ));
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
  Widget build(BuildContext context) {
    return Container();
  }
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ElevatedButton.icon(
        onPressed: () => {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SecondScreen()))
        },
        label: const Text('text'),
        icon: const Icon(Icons.book),
      ),
    );
  }
}

int coolFunc(i, a) {
  return a + i;
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen")),
      body: Container(
          color: const Color.fromARGB(2, 223, 107, 107),
          child: Column(
            children: [
              ElevatedButton(
                child: const Text("Go to First Screen"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const TextField(),
              ElevatedButton(
                child: const Text("send"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.bluetooth),
            label: 'label0',
            backgroundColor: Color.fromARGB(255, 196, 196, 84)),
        BottomNavigationBarItem(icon: Icon(Icons.bluetooth), label: 'label1'),
        BottomNavigationBarItem(icon: Icon(Icons.bluetooth), label: 'label2'),
        BottomNavigationBarItem(icon: Icon(Icons.bluetooth), label: 'label3'),
      ]),
    );
  }
}
