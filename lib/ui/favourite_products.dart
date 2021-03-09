import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  void initState() {
    super.initState();

    // _scrollController.addListener(() {
    //   if (_scrollController.hasClients) {
    //     if (_scrollController.offset ==
    //         _scrollController.position.maxScrollExtent) {
    //       _getPosts();
    //     }
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Favourite products'),
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
