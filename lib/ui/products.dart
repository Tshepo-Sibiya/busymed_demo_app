import 'package:busymed/provider/products_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Top 20 Products'),
      ),
      body: Center(
        child: Container(child: buildProductsList(context)),
      ),
    );
  }

  Widget buildProductsList(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          print(Provider.of<ProductProvider>(context).fetchProducts());
          return Text('');
        },
      ),
    );

    // return Consumer<ProductProvider>(builder: (context, myModel, child) {
    //   print(myModel);
    //   return Text(myModel?.errorMessage != null ? '1' : '2');

    //   // if (myModel.album.status == Status.COMPLETED) {
    //   //   return Text("${myModel.album.data.title}");
    //   // } else if (myModel.album.status == Status.ERROR) {
    //   //   return Text("Error : ${myModel.album.message}");
    //   // } else {
    //   //   return Text("${myModel.album.message}");
    //   // }
    // });
  }
}
