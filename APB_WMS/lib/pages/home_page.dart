import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // buatkan saya dashboard untuk warehouse management system

      appBar: AppBar(
        title: Text(widget.title),
        //buatkan navigation bar untuk dashboard
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.black,
              weight: 100,
            ),
            onPressed: () {
              //buatkan saya
            },
          ),
        ],
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 120,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Total Barang : 1000',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                    width: 120,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Total Paket : 100',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )),
                Container(
                    width: 120,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Onprogress : 10',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )),
              ])
        ],
      )),
      //buatkan saya sebuah container untuk menampilkan data
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //buatkan saya
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      //buatkan saya navigasi di bawah layar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Gudang',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
