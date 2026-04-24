import 'package:flutter/material.dart';
import 'package:flutter_application_1/product_list_page.dart';
import 'product_list_page.dart';

void main() => runApp(NavApp());

class NavApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductListPage(),
    );
  }
}