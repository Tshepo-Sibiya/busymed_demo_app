import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Top 20 Products'),
      ),
      body: const Center(),
    );
  }
}
