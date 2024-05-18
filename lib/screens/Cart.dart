import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Checkout"),
          ),
          body: const Center(
            child: Text("Your Cart is Empty"),
          )),
    );
  }
}
