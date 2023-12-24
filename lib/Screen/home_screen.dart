import 'package:flutter/material.dart';

import 'custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
        title: "Home Page",
    ),
    );
  }
}
