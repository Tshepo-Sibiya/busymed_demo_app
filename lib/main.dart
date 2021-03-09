import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/products_provider.dart';
import 'ui/products.dart';

// void main() => runApp(
//       ChangeNotifierProvider<ProductProvider>(
//         builder: (context) => ProductProvider(),
//         child: MaterialApp(
//           home: HomePage(),
//           debugShowCheckedModeBanner: false,
//         ),
//       ),
//     );

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProductProvider>(
          create: (context) => ProductProvider(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
        ),
        home: ProductsScreen(),
      ),
    );
  }
}
// void main() {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider<ProductProvider>.value(
//           value: ProductProvider(),
//         ),
//       ],
//       child: MaterialApp(
//         home: MyHomePage(),
//       ),
//     ),
//   );
// }

// void main() => runApp(
//       // ignore: missing_required_param
//       ChangeNotifierProvider<ProductProvider>(
//         child: MaterialApp(
//           home: MyHomePage(title: 'BusyMed'),
//           debugShowCheckedModeBanner: false,
//         ),
//       ),
//     );

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'BusyMed',
//       theme: ThemeData(
//         primarySwatch: Colors.grey,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(title: 'BusyMed'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   getProduct() {
//     List<Product> products =
//         Provider.of<ProductProvider>(context).getProducts();

//     print(products);

//     // Provider.of<ProductProvider>(context).setProducts(products);
//   }

//   @override
//   Widget build(BuildContext context) {
//     getProduct();
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider<ProductProvider>(
//             create: (context) => ProductProvider()),
//       ],
//       child: MaterialApp(
//           theme: ThemeData(
//             brightness: Brightness.light,
//           ),
//           home: MyHomePage()),
//     );

//     //Scaffold(

//     // appBar: AppBar(
//     //   centerTitle: true,
//     //   title: Text('widget.title'),
//     // ),
//     // body: Container(
//     //     color: Colors.transparent,
//     //     child: ListView.builder(
//     //       itemCount: 5,
//     //       itemBuilder: (BuildContext context, int index) {
//     //         return ListTile(
//     //             leading: Icon(Icons.favorite), title: Text('456'));
//     //       },
//     //     )

//     // Padding(
//     //   padding: const EdgeInsets.all(20),
//     //   child: Column(
//     //     children: <Widget>[
//     //       RaisedButton(
//     //         color: Colors.grey,
//     //         onPressed: () {
//     //           setState(() {
//     //             Navigator.push(
//     //               context,
//     //               MaterialPageRoute(builder: (context) => ProductsScreen()),
//     //             );
//     //           });
//     //         },
//     //         child: Row(
//     //           children: [
//     //             Icon(Icons.list),
//     //             SizedBox(width: 10),
//     //             Text('View products (14)'),
//     //           ],
//     //         ),
//     //       ),
//     //       RaisedButton(
//     //         color: Colors.grey,
//     //         onPressed: () {
//     //           setState(() {
//     //             Navigator.push(
//     //               context,
//     //               MaterialPageRoute(
//     //                   builder: (context) => FavouriteScreen()),
//     //             );
//     //           });
//     //         },
//     //         child: Row(
//     //           children: [
//     //             Icon(Icons.favorite),
//     //             SizedBox(width: 10),
//     //             Text('View favourite products (0)'),
//     //           ],
//     //         ),
//     //       ),
//     //     ],
//     //   ),
//     // ),
//     //  ),
//     // );
//   }
// }
