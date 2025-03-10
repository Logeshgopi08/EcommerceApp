import 'package:ecommerceapp/Screens/Products.dart';
import 'package:flutter/material.dart';

import 'category.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
            children: [
              myAppBar(),
              // for search bar
              SearchBar(),
              // for a list of category,
              const Category(),
              // for disply all product itmes
              Products(),
            ],
          )),
    );
  }

  Padding SearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 65,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.05),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              contentPadding:
              EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              fillColor: Colors.white,
              hintText: "Search...",
              hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black26,
              ),
              prefixIcon: Icon(
                Icons.search,
                size: 30,
                color: Colors.black26,
              )),
        ),
      ),
    );
  }

  Padding myAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.arrow_back_ios,
            size: 25,
          ),
          const Text(
            "Explore",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Image.asset(
            "images/menu.png",
            height: 25,
          )
        ],
      ),
    );
  }
}
