import 'package:flutter/material.dart';

class Frame863 extends StatelessWidget {
  const Frame863({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text('Бар'),
    );
  }
}
