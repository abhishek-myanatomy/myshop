import 'package:flutter/material.dart';
import 'package:myshop/screens/product_overview_screen.dart';

void main() {
  runApp(Myshop());
}

class Myshop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      title: 'MyShop',
      home: ProductOverviewScreen(),
    );
  }
}
