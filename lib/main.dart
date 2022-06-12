import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Tugas Pertemuan 8',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedScreenIndex = 0;

  final List _screens = [
    {"screen": const HalamanSatu(), "title": "Ini Halaman Satu"},
    {"screen": const HalamanDua(), "title": "Ini Halaman Dua"},
    {"screen": const HalamanTiga(), "title": "Ini Halaman Tiga"}
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedScreenIndex]["title"]),
      ),
      body: _screens[_selectedScreenIndex]["screen"],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedScreenIndex,
        onTap: _selectScreen,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Tab 1'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Tab 2'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Tab 3")
        ],
      ),
    );
  }
}

class HalamanSatu extends StatelessWidget {
  const HalamanSatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          '1',
          style: TextStyle(fontSize: 24),
        ),
        Text(
          'Halaman 1',
          style: TextStyle(fontSize: 15),
        ),
      ]),
    );
  }
}

class HalamanDua extends StatelessWidget {
  const HalamanDua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          '2',
          style: TextStyle(fontSize: 24),
        ),
        Text(
          'Halaman 2',
          style: TextStyle(fontSize: 15),
        ),
      ]),
    );
  }
}

class HalamanTiga extends StatelessWidget {
  const HalamanTiga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          '3',
          style: TextStyle(fontSize: 24),
        ),
        Text(
          'Halaman 3',
          style: TextStyle(fontSize: 15),
        ),
      ]),
    );
  }
}

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}
