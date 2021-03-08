import 'package:flutter/material.dart';

import 'ui/favourite_products.dart';
import 'ui/products.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BusyMed',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'BusyMed'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Container(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                RaisedButton(
                  color: Colors.grey,
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductsScreen()),
                      );
                    });
                  },
                  child: Row(
                    children: [
                      Icon(Icons.list),
                      SizedBox(width: 10),
                      Text('View products (14)'),
                    ],
                  ),
                ),
                RaisedButton(
                  color: Colors.grey,
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FavouriteScreen()),
                      );
                    });
                  },
                  child: Row(
                    children: [
                      Icon(Icons.favorite),
                      SizedBox(width: 10),
                      Text('View favourite products (0)'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
